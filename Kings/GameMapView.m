//
//  GameMapView.m
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import "GameMapView.h"
#import "CityCell.h"
@interface GameMapView ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic,strong) NSMutableArray*cities;
@end
NSString* kCityCell = @"CityCell";
@implementation GameMapView

- (id)initWithParameters:(Game *)parameters {
    GameMapView* myViewObject = [[[NSBundle mainBundle] loadNibNamed:@"GameMapView" owner:self options:nil] objectAtIndex:0];



    return myViewObject;
}
-(UICollectionView*)collectionView{
    if (!_collectionView) {

        UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
        _collectionView=[[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, [self widthforCElls], [self widthforCElls]) collectionViewLayout:layout];
        [_collectionView setDataSource:self];
        [_collectionView setDelegate:self];


        

        [_collectionView registerClass:[CityCell class] forCellWithReuseIdentifier:kCityCell];
        [_collectionView registerNib:[UINib nibWithNibName:kCityCell bundle:nil] forCellWithReuseIdentifier:kCityCell];
        _collectionView.backgroundColor =[UIColor clearColor];
    }
    return _collectionView;

}
-(void)layoutSubviews{
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{


//    double rads = DEGREES_TO_RADIANS(45);
//    CGAffineTransform transform = CGAffineTransformRotate(CGAffineTransformIdentity, rads);
//
//
//    [UIView animateWithDuration:0.5 animations:^{
//        _collectionView.transform = transform;
//    }];
});
    [super layoutSubviews];
}
-(void)didMoveToSuperview{

    [UIView animateWithDuration:0 animations:^{
        self.scrollView.contentSize = CGSizeMake([self widthforCElls], [self widthforCElls]);
    } completion:^(BOOL finished) {
        self.scrollView.backgroundColor=[CityUtils backGroundGrass];
        [self.scrollView addSubview:self.collectionView];
    }];
}
-(CGFloat)widthforCElls{
    return sqrtf(self.cities.count)*(kCityCellheight+kCityCellPAdding);
}

#pragma mark : CollectionViewDelegates
- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return self.cities.count;
}
-(NSMutableArray*)cities{
    if (!_cities) {
        _cities =[[GameHelper standardManager] getCities].mutableCopy;
    }
    return _cities;
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    NSLog(@"1");

    return _collectionView;
}

- (NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CityCell *cell =
    [self.collectionView    dequeueReusableCellWithReuseIdentifier:kCityCell
                                                forIndexPath:indexPath];
//    UILabel* label =[[UILabel alloc ] initWithFrame:CGRectMake(0, 0, 200, 200)];
//    label.text= [NSString stringWithFormat:@"%ld", (long)indexPath.row];
//    [cell addSubview:label];
    cell.layer.borderWidth = 2.0f;
    cell.layer.borderColor =[UIColor whiteColor].CGColor;
   [ cell setupCellWithCity:self.cities[indexPath.row ]];
    cell.backgroundColor =[ UIColor clearColor];

//    double rads = DEGREES_TO_RADIANS(225);
//    CGAffineTransform transform = CGAffineTransformRotate(CGAffineTransformIdentity, rads);
//
//
//    [UIView animateWithDuration:0 animations:^{
//        cell.cityImage.transform = transform;
//    }];

    return cell;
}

- (CGSize)  collectionView:(UICollectionView *)collectionView
                    layout:(UICollectionViewLayout *)collectionViewLayout
    sizeForItemAtIndexPath:(NSIndexPath *)indexPath {

        return CGSizeMake(kCityCellheight, kCityCellheight);
}
#pragma mark -Selection
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [self.delegate selectedTile:self.cities[indexPath.row]];
}


@end
