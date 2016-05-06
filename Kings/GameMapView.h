//
//  GameMapView.h
//  Kings
//
//  Created by isBSO on 5/2/16.
//  Copyright © 2016 Bishow. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol GameMapViewDelegate <NSObject>
@required
- (void)selectedTile:(City*)city;
@end


@interface GameMapView : UIView<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic, weak) id <GameMapViewDelegate> delegate;
@property (strong, nonatomic)  UICollectionView *collectionView;
- (id)initWithParameters:(Game *)game;
@end