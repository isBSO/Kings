//
//  LandingViewController.m
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import "LandingViewController.h"
#import "GameHomeViewController.h"

@interface LandingViewController ()

@end

@implementation LandingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Player* mainPlayer = [Player new];
    mainPlayer.firstName = @"Bishow ";
    mainPlayer.lastName = @"Rajthala";
    mainPlayer.titleLord = @"lodnsd fsdhfdskfjsd fd";
    mainPlayer.goldCount = 12321;

    Resource* foodResource = [Resource new];
    foodResource.resourceType = food;
    foodResource.resourceName = @"farm";
    foodResource.foodOutPut = 100;
    Resource* foodResource2 = [Resource new];
    foodResource2.resourceType = food;
    foodResource2.resourceName = @"farm";
    foodResource2.foodOutPut = 1079;
    mainPlayer.resources = @[foodResource,foodResource2];
    
    [[GameHelper standardManager] createNewGameWithName:@"Bishow game" players:@[mainPlayer]];
    // Do any additional setup after loading the view.
}
- (IBAction)startGame:(id)sender {
    GameHomeViewController* gameVC=[[ GameHomeViewController alloc] initWithParameters:nil];
   
    
    [self presentViewController:gameVC animated:YES completion:^{
    }];
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
