//
//  Player.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Resource.h"

typedef enum : NSUInteger {
    DefaultStrengthb=8,
    ModerateStrength =9,
    HardCoreStrength =10,
} PlayerProcessingStrength;

@interface Player : NSObject
@property (nonatomic,strong) NSString* firstName;
@property (nonatomic,strong) NSString* lastName;
@property (nonatomic,strong) NSString* titleLord;
@property (nonatomic,strong) NSArray* cities;
@property (nonatomic)BOOL isMainPlayer;
@property (nonatomic)BOOL isHidden;



@property (nonatomic) NSInteger goldCount;
@property (nonatomic) NSInteger foodCount;
@property (nonatomic) NSInteger influence;
@property (nonatomic) NSInteger armyStrength;
@property (nonatomic) PlayerProcessingStrength processingStrength;


@property (nonatomic,strong) NSMutableArray<Resource *>* resources;







@end
