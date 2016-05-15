//
//  CityCell.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *cityName;

@property (weak, nonatomic) IBOutlet UIImageView *cityImage;



-(void)setupCellWithCity:(Player*)player;
@end
