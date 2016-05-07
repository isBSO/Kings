//
//  TopMenuView.m
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import "TopMenuView.h"

@implementation TopMenuView
- (id)initWithParameters:(Player *)parameters {
    TopMenuView* myViewObject = [[[NSBundle mainBundle] loadNibNamed:@"TopMenuView" owner:self options:nil] objectAtIndex:0];
    return myViewObject;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
