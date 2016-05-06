//
//  TemplateFancyNameLabel.m
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 Bishow. All rights reserved.
//

#import "TemplateFancyNameLabel.h"

@implementation TemplateFancyNameLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)layoutSubviews{
    self.font=[UIFont fontWithName:@"TimesNewRomanPS-BoldItalicMT" size:24];
}

@end
