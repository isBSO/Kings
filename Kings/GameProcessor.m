//
//  GameProcessor.m
//  Kings
//
//  Created by Rachel Rajthala on 7/6/16.
//  Copyright © 2016 Rajthala. All rights reserved.
//

#import "GameProcessor.h"

@implementation GameProcessor
+(void)startGameDefault{
    NSLog(@"Game starts ###");
    Player* mainPlayer = [Player new];
    mainPlayer.firstName = @"David ";
    mainPlayer.lastName = @"Moyer";
    mainPlayer.titleLord = @"Lord Bennet";
    mainPlayer.goldCount = 99;
    
    Resource* foodResource = [Resource new];
    foodResource.resourceType = food;
    foodResource.resourceName = @"farm";
    foodResource.foodOutPut = 13;
    foodResource.diplomacyOutPut = 2;
    Resource* foodResource2 = [Resource new];
    foodResource2.resourceType = gold;
    foodResource2.resourceName = @"Market";
    foodResource2.goodOutPut = 5;
    mainPlayer.resources = @[foodResource,foodResource2].mutableCopy;
    
    // Player 2
    Player* otherPlayer = [Player new];
    otherPlayer.firstName = @"Barack ";
    otherPlayer.lastName = @"obama";
    otherPlayer.titleLord = @"Barak obama Hussain";
    otherPlayer.goldCount = 1;
    otherPlayer.isHidden = true;
    
    Resource* foodResource4 = [Resource new];
    foodResource4.resourceType = food;
    foodResource4.resourceName = @"farm";
    foodResource4.foodOutPut = 1;
    Resource* foodResource10 = [Resource new];
    foodResource10.resourceType = gold;
    foodResource10.resourceName = @"market";
    foodResource10.goodOutPut = 1;
    otherPlayer.resources = @[foodResource4,foodResource10].mutableCopy;
    
    [[GameHelper standardManager] createNewGameWithName:@"New game" players:@[mainPlayer,otherPlayer]];
    [NSTimer scheduledTimerWithTimeInterval:1.005 target:self selector:@selector(processTurn) userInfo:nil repeats:true];
}
+(void)processTurn{
    NSLog(@"Process turn ###");
    for (Player* playa in [GameHelper standardManager].currentGame.players) {
        [self processTurnForPlayer:playa];
    }
     NSLog(@"End of turn %ld", (long)[GameHelper standardManager].currentGame.turnsCompleted);
    [GameHelper standardManager].currentGame.turnsCompleted++;
    [self sendMessage:@"turn complete"];
    
    
}
+(void)sendMessage:(NSString*)message{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"turnComplete" object:message];
    
}

+(void)simulateGame{
    //used to simulate a game and actions
    [self startGameDefault];
    
}


+(void)processTurnForPlayer:(Player*)player{
    
//    NSLog(@"Process turn for player %@",player.firstName);
    [self processResourcesforPlayer:player];
    
}
#pragma mark : Process all the resources for the player
+(void)processResourcesforPlayer:(Player*)playa{
    for (Resource* resource in playa.resources) {
        if (playa.foodCount<1) {
            playa.foodCount = 1;
        }
        else
            playa.foodCount = playa.foodCount+resource.foodOutPut;
        
        playa.goldCount = playa.goldCount+ resource.goodOutPut;
        playa.influence = playa.influence + resource.diplomacyOutPut;
        
       

    }
  
    NSLog(@" \n ============== Player: %@ food: %ld gold : %ld influence :%ld resourcesTotal:%ld=============",playa.firstName,(long)playa.foodCount, (long)playa.goldCount, (long)playa.influence, (unsigned long)playa.resources.count);
    
    
    for (int i = 80; i<playa.goldCount; i++) {
        if ([self shouldAddResourceForPlayer:playa]) {
            Resource* newResource =[Resource new];
            newResource.goodOutPut = 10;
            newResource.resourceName = @"Gold Market";
            NSMutableArray* resourcesforPlayer = playa.resources.mutableCopy;
               [self sendMessage:[NSString stringWithFormat:@"%@ bought %@  and totalgold:%ld",playa.firstName, newResource.resourceName, (long)playa.goldCount]];
            [resourcesforPlayer addObject:newResource];
            playa.resources = resourcesforPlayer;
            playa.goldCount = playa.goldCount-i;
        }
    }
   
    
    
}
#pragma mark : Helper for Above
+(BOOL)shouldAddResourceForPlayer:(Player*)playa{
    if (playa.goldCount>100) {
  return       true;
    }
  return  false;
    
}

#pragma mark : Process Expenses
+(void)processExpensesforPlayer:(Player*)player{
    
}
#pragma mark : Process Diplomacy

#pragma mark : Process Misc
@end
