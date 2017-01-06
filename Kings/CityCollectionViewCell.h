//
//  CityCollectionViewCell.h
//  Kings
//
//  Created by isBSO on 5/15/16.
//  Copyright © 2016 Rajthala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *totalOutPut;

@end
