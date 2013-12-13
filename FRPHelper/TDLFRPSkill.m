//
//  TDLFRPSkill.m
//  FRPHelper
//
//  Created by Nuri Tasdemir on 7/12/13.
//  Copyright (c) 2013 Nuri Tasdemir. All rights reserved.
//

#import "TDLFRPSkill.h"

@implementation TDLFRPSkill

- (TDLFRPSkill*) initWithName: (NSString*) skillName skillBase: (short) skillModifier {
    self = [super init];
    
    if (self) {
        self.skillName = skillName;
        self.skillModifier = skillModifier;
    }
    
    return self;
}

@end
