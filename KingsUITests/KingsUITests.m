//
//  KingsUITests.m
//  KingsUITests
//
//  Created by isBSO on 5/8/16.
//  Copyright © 2016 Bishow. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface KingsUITests : XCTestCase

@end

@implementation KingsUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testStartGame{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"StartGame"] tap];
    
    XCUIElement *element2 = [[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element;
    XCUIElement *element = [element2 childrenMatchingType:XCUIElementTypeOther].element;
    [element tap];
  



    

}


@end
