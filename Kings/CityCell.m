//
//  CityCell.m
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import "CityCell.h"

@implementation CityCell
-(void)setupCellWithCity:(City*)city{
    _cityName.text = city.cityName;
}
@end
