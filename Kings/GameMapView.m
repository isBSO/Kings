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

@property (nonatomic,strong) NSMutableArray*players;
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

-(void)didMoveToSuperview{

    [UIView animateWithDuration:0 animations:^{
        self.scrollView.contentSize = CGSizeMake([self widthforCElls], [self widthforCElls]);
        self.scrollView.contentOffset = CGPointMake ([self widthforCElls]/2, [self widthforCElls]/2);
    } completion:^(BOOL finished) {
        self.scrollView.backgroundColor=[CityUtils backGroundPaper];
        [self.scrollView addSubview:self.collectionView];
    }];
}
-(CGFloat)widthforCElls{
    return sqrtf(self.players.count)*(kCityCellheight+kCityCellPAdding);
}

#pragma mark : CollectionViewDelegates
- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return self.players.count;
}
-(NSMutableArray*)players{
    if (!_players) {
        _players =[[GameHelper standardManager] getPlayers:nil].mutableCopy;
    }
    return _players;
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
//    cell.layer.borderWidth = 2.0f;
//    cell.layer.borderColor =[UIColor whiteColor].CGColor;
   [ cell setupCellWithCity:self.players[indexPath.row ]];
    cell.backgroundColor =[ UIColor clearColor];



    return cell;
}

- (CGSize)  collectionView:(UICollectionView *)collectionView
                    layout:(UICollectionViewLayout *)collectionViewLayout
    sizeForItemAtIndexPath:(NSIndexPath *)indexPath {

        return CGSizeMake(kCityCellheight, kCityCellheight);
}
#pragma mark -Selection
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    CityCell *cell =
    [self.collectionView    dequeueReusableCellWithReuseIdentifier:kCityCell
                                                      forIndexPath:indexPath];
    [self.delegate selectedTile:self.players[indexPath.row] fromView:(UIView*)cell];
}


@end
