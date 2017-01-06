//
//  CityViewController.m
//  Kings
//
//  Created by isBSO on 5/5/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import "CityViewController.h"
#import "CityCollectionViewCell.h"
#import "FoodSummaryCell.h"

@interface CityViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionViewP;
@property (nonatomic,strong)Player* player;

@end
NSString* kCityCEllDetail = @"CityCollectionViewCell";
NSString* kFoodSummaryCell = @"FoodSummaryCell";

@implementation CityViewController
-(id)initWithPlayer:(Player*)playa{
    UIStoryboard *storyboard =
    [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self = [storyboard
            instantiateViewControllerWithIdentifier:@"CityViewController"];
    self.view.backgroundColor = [UIColor clearColor];
    self.modalPresentationStyle =UIModalPresentationOverCurrentContext;
    self.modalTransitionStyle =UIModalTransitionStyleCrossDissolve;
    self.player = playa;
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_collectionViewP registerNib:[UINib nibWithNibName:kCityCEllDetail bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:kCityCEllDetail];
        [_collectionViewP registerNib:[UINib nibWithNibName:kFoodSummaryCell bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:kFoodSummaryCell];
//    [_collectionViewP registerClass:[CityCollectionViewCell class] forCellWithReuseIdentifier:kCityCEllDetail];
    _collectionViewP.dataSource = self;
//    [_collectionView registerClass:[CityCell class] forCellWithReuseIdentifier:kCityCell];
//    [_collectionView registerNib:[UINib nibWithNibName:kCityCell bundle:nil] forCellWithReuseIdentifier:kCityCell];
}
- (IBAction)dismissME:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark : CollectionViewDelegates
- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return 1;
}



- (NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        FoodSummaryCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFoodSummaryCell forIndexPath:indexPath];
        return cell;
    }
    CityCollectionViewCell *cell =
    [collectionView    dequeueReusableCellWithReuseIdentifier:kCityCEllDetail
                                                      forIndexPath:indexPath];
    //    UILabel* label =[[UILabel alloc ] initWithFrame:CGRectMake(0, 0, 200, 200)];
    //    label.text= [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    //    [cell addSubview:label];
    //    cell.layer.borderWidth = 2.0f;
    //    cell.layer.borderColor =[UIColor whiteColor].CGColor;

//    cell.backgroundColor =[ UIColor blueColor];
    cell.backgroundColor = [UIColor greenColor];

 cell.title.text = @"food";
    cell.imageView.image =[ UIImage imageNamed:@"apple"];
    cell.totalOutPut.text = [[GameHelper standardManager] foodoutPutforMainPlayer];

    return cell;
}
//
- (CGSize)  collectionView:(UICollectionView *)collectionView
                    layout:(UICollectionViewLayout *)collectionViewLayout
    sizeForItemAtIndexPath:(NSIndexPath *)indexPath {

    return CGSizeMake(self.collectionViewP.frame.size.width , 120);
}
#pragma mark -Selection
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
//    CityCell *cell =
//    [self.collectionView    dequeueReusableCellWithReuseIdentifier:kCityCell
//                                                      forIndexPath:indexPath];
//    [self.delegate selectedTile:self.players[indexPath.row] fromView:(UIView*)cell];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
