//
//  Player.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Resource.h"



@interface Player : NSObject
@property (nonatomic,strong) NSString* firstName;
@property (nonatomic,strong) NSString* lastName;
@property (nonatomic,strong) NSString* titleLord;
@property (nonatomic,strong) NSArray* cities;


@property (nonatomic) NSInteger goldCount;
@property (nonatomic) NSInteger foodCount;

@property (nonatomic,strong) NSArray<Resource *>* resources;







@end
