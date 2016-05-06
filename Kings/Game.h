//
//  Game.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 Bishow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Game : NSObject
@property (nonatomic, strong) Player* mainPlayer;
@property (nonatomic,strong)NSArray<Player*>*otherPlayers;





@end
