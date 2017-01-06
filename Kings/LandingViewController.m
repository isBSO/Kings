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
    [GameProcessor simulateGame];
    return;
    Player* mainPlayer = [Player new];
    mainPlayer.firstName = @"Bayer ";
    mainPlayer.lastName = @"Mayer";
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

    // Player 2
    Player* otherPlayer = [Player new];
    otherPlayer.firstName = @"daka ";
    otherPlayer.lastName = @"gunda";
    otherPlayer.titleLord = @"lodnsd fsdhfdskfjsd fd";
    otherPlayer.goldCount = 12321;
    otherPlayer.isHidden = true;

    Resource* foodResource4 = [Resource new];
    foodResource4.resourceType = food;
    foodResource4.resourceName = @"farm";
    foodResource4.foodOutPut = 100;
    Resource* foodResource10 = [Resource new];
    foodResource10.resourceType = food;
    foodResource10.resourceName = @"farm";
    foodResource10.foodOutPut = 1079;
    otherPlayer.resources = @[foodResource4,foodResource10];
    
    [[GameHelper standardManager] createNewGameWithName:@"New game" players:@[mainPlayer,otherPlayer,[Player new],[Player new]]];
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
