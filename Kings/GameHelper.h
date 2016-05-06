//
//  GameHelper.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 Bishow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameHelper : NSObject
@property (nonatomic, strong) Game *game;

+ (GameHelper *)standardManager;
-(NSArray*)getCities;
@end
