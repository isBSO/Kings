//
//  GameHelperTest.m
//  Kings
//
//  Created by isBSO on 5/8/16.
//  Copyright © 2016 Rajthala. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GameHelper.h"

@interface GameHelperTest : XCTestCase

@end

@implementation GameHelperTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetCities {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  NSArray* cities =  [[GameHelper standardManager] getCities];
    XCTAssert(cities);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
