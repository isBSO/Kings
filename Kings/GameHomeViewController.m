//
//  GameHomeViewController.m
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import "GameHomeViewController.h"

#import "CityViewController.h"

@interface GameHomeViewController ()<GameMapViewDelegate>
@property (nonatomic,strong) TopMenuView* topView;
@property (nonatomic,strong) GameMapView* gameMap;
@property (weak, nonatomic) IBOutlet UIView *topCont;
@property (weak, nonatomic) IBOutlet UIView *bottomCont;

@end

@implementation GameHomeViewController
- (id)initWithParameters:(Game *)game {
    UIStoryboard *storyboard =
    [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self = [storyboard
            instantiateViewControllerWithIdentifier:@"GameHomeViewController"];
    return self;
}

 
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.




dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    [self.view addSubview:self.topView];

    [self.view addSubview:self.gameMap];
});

}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{

    CityViewController *dvc = [[CityViewController alloc] init];

//    dvc.dataSource = collectionView.dataSource;

    self.gameMap.collectionView = collectionView;

    [self.navigationController pushViewController:dvc animated:YES];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

}
#pragma mark- Top and bottom view
-(TopMenuView*)topView{
    if (!_topView) {
        _topView =[[TopMenuView alloc] initWithParameters:nil];
         self.topView.frame =_topCont.frame;
    }
    return _topView;
}
-(GameMapView*)gameMap{
    if (!_gameMap) {
        _gameMap =[[GameMapView alloc] initWithParameters   :nil];
         self.gameMap.frame = _bottomCont.frame;
        self.gameMap.delegate= self;
        self.gameMap.delegate= self;
    }
    return _gameMap;
}

#pragma mark- Delegate from MapView
-(void)selectedTile:(City *)city{
    CityViewController *dvc = [[CityViewController alloc] init];

    //    dvc.dataSource = collectionView.dataSource;

//    self.gameMap.collectionView = collectionView;

    [self presentViewController:dvc animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
