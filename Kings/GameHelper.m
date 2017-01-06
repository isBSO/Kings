//
//  GameHelper.m
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import "GameHelper.h"

@implementation GameHelper

static GameHelper *instance = nil;

+ (GameHelper *)standardManager {
    @synchronized(self) {
        if (!instance) {
            instance = [[super allocWithZone:NULL] initSelf];
        }
    }

    return instance;
}

- (instancetype)initSelf {
    self = [super init];

    if (self) {
    }

    return self;
}
-(NSArray*)getPlayers:(Game*)game{

    return [GameHelper standardManager].currentGame.players;
}

-(void)createNewGameWithName:(NSString*)name players:(NSArray<Player*>*)players{
  
    
    Game *newGame =[ Game new];
    newGame.gameName = name;
    newGame.players = players;
    newGame.mainPlayer = players[0];
    newGame.mainPlayer.isHidden = false;
    newGame.mainPlayer.isMainPlayer = true;
//    [playersInField removeObjectAtIndex:0];
//    [playersInField insertObject:newGame.mainPlayer atIndex:2];
//    newGame.players = playersInField.copy;
    [GameHelper standardManager].currentGame.turnsCompleted =1;
    [GameHelper standardManager].currentGame = newGame;
    
}


-(NSString*)foodoutPutforMainPlayer{
    Player* mainPlayer = [GameHelper standardManager].currentGame.mainPlayer;
    NSInteger Outputfood =0;
    for (Resource* resouce in mainPlayer.resources) {
        Outputfood =  (resouce.foodOutPut + Outputfood) ;
    }
    return [NSString stringWithFormat: @"%ld", (long)Outputfood];
}
@end
