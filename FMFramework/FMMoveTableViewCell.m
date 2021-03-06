//
//  FMMoveTableViewCell.m
//  FMFramework
//
//  Created by Florian Mielke.
//  Copyright 2012 Florian Mielke. All rights reserved.
//  

#import "FMMoveTableViewCell.h"


@implementation FMMoveTableViewCell

- (UIView *)snapshotView
{
    UIView *snapshotView = [self snapshotViewAfterScreenUpdates:YES];
    snapshotView.frame = self.frame;
    snapshotView.alpha = .9f;
    snapshotView.layer.masksToBounds = NO;
    snapshotView.layer.shadowOffset = CGSizeMake(1.0, 1.0);
    snapshotView.layer.shadowRadius = 2.0;
    snapshotView.layer.shadowOpacity = 0.6;
    
    return snapshotView;
}


- (void)prepareForMoveSnapshot
{
    // Should be implemented by subclasses if needed
}

- (void)finishForMove
{
    self.hidden = NO;
}


- (void)prepareForMove
{
    self.hidden = YES;
    self.textLabel.text = @"";
    self.detailTextLabel.text = @"";
    self.imageView.image = nil;
}


@end
