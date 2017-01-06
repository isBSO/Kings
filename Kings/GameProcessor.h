//
//  GameProcessor.h
//  Kings
//
//  Created by Rachel Rajthala on 7/6/16.
//  Copyright © 2016 Rajthala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameProcessor : NSObject
+(void)startGameDefault;
+(void)processTurn;

+(void)simulateGame;

+(void)sendMessage:(NSString*)message;
+(void)processTurnForPlayer:(Player*)player;
+(void)processResourcesforPlayer:(Player*)resources;


//Acce
+(BOOL)shouldAddResourceForPlayer:(Player*)player;
@end
