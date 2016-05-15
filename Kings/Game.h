//
//  Game.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Game : NSObject

@property (nonatomic) NSString* gameName;
@property (nonatomic, strong) Player* mainPlayer;

@property (nonatomic,strong)NSArray<Player*>*otherPlayers;
@property (nonatomic,strong)NSArray<Player*>*players;





@end
