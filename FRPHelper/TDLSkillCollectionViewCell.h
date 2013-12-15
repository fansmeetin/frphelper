//
//  TDLSkillCollectionViewCell.h
//  FRPHelper
//
//  Created by Nuri Tasdemir on 13/12/13.
//  Copyright (c) 2013 Nuri Tasdemir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDLSkillCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *skillNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *skillModifierLabel;
@property (weak, nonatomic) IBOutlet UIButton *skillRollButton;

@end
