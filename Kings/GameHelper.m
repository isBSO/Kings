//
//  GameHelper.m
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 Bishow. All rights reserved.
//

#import "GameHelper.h"

@implementation GameHelper
static GameHelper *instance = nil;
+ (GameHelper *)standardManager {
    @synchronized(self) {
        if (!instance) {
            instance = [[super allocWithZone:NULL] initSelf];
        }
    }
    
    return instance;
}

- (instancetype)initSelf {
    self = [super init];
    
    if (self) {
    }
    
    return self;
}
-(NSArray*)getCities{
    NSMutableArray* cities = [NSMutableArray new];
    for (int i=0; i<16; i++) {
        if (i % 2){
            City * city = [City new];
            city.cityName = @"Camelot";
            [cities addObject:city];
        }
            // odd
            else
            {
                City * city = [City new];
                city.cityName = @"LALA";
                [cities addObject:city];
            }
                // even


    }
    return cities.copy;
}
@end
