//
//  Resource.h
//  Kings
//
//  Created by isBSO on 5/15/16.
//  Copyright © 2016 . All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, ResourceOutType) {
    food,
    gold,
    strength,
    diplomatic,
    religion,
};

@interface Resource : NSObject

@property (nonatomic,strong) NSString* resourceName;
@property (nonatomic) ResourceOutType resourceType;
@property (nonatomic) NSInteger foodOutPut;
@property (nonatomic) NSInteger goodOutPut;
@property (nonatomic) NSInteger streghtOutPut;
@property (nonatomic) NSInteger diplomacyOutPut;
@property (nonatomic) NSInteger religionOutPut;


@end
