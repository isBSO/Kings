//
//  Player.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 Bishow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic,strong) NSString* firstName;
@property (nonatomic,strong) NSString* lastName;
@property (nonatomic,strong)NSArray<Player*>*otherPlayers;

@end
