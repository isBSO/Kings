//
//  GameHelper.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
@interface GameHelper : NSObject
@property (nonatomic, strong) Game *currentGame;
@property (nonatomic, strong) NSArray<Game*> *games;

+ (GameHelper *)standardManager;
-(NSArray*)getPlayers:(Game*)game;
-(void)createNewGameWithName:(NSString*)name players:(NSArray<Player*>*)players;

-(void)startGame;
-(NSString*)foodoutPutforMainPlayer;
@end
