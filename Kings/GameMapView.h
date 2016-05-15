//
//  GameMapView.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 isBSO. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol GameMapViewDelegate <NSObject>
@required
- (void)selectedTile:(Player*)city fromView:(UIView*)startingView;
@end


@interface GameMapView : UIView<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic, weak) id <GameMapViewDelegate> delegate;
@property (strong, nonatomic)  UICollectionView *collectionView;
- (id)initWithParameters:(Game *)game;
@end
