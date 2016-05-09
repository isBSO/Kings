//
//  City.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, Diplomacy) {
    notMet,
    notAfraid,
    Afraid,
    FriendLy,
    Allies,
    Enemy,
};
@interface City : NSObject
@property (nonatomic, strong) NSString* cityName;
@property (nonatomic, strong) NSString* cityImage;

@property (nonatomic) Diplomacy diplomacy;

@end
