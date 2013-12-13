//
//  TDLFRPSkill.h
//  FRPHelper
//
//  Created by Nuri Tasdemir on 7/12/13.
//  Copyright (c) 2013 Nuri Tasdemir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TDLFRPSkill : NSObject

@property NSString *skillName;
@property short skillModifier; //excluding level / 2

- (TDLFRPSkill*) initWithName: (NSString*) skillName skillBase: (short) skillBase;

@end
