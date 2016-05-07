//
//  GameHelper.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameHelper : NSObject
@property (nonatomic, strong) Game *game;

+ (GameHelper *)standardManager;
-(NSArray*)getCities;
@end
