//
//  TDLFRPCharacter.m
//  FRPHelper
//
//  Created by Nuri Tasdemir on 13/12/13.
//  Copyright (c) 2013 Nuri Tasdemir. All rights reserved.
//

#import "TDLFRPCharacter.h"
#import "TDLFRPSkill.h"


@interface TDLFRPCharacter ()

@property NSMutableArray *skillArray;

@end

@implementation TDLFRPCharacter

- (NSString*) skillNameAtIndex: (int) index {
    return [(TDLFRPSkill*)[self.skillArray objectAtIndex:index] skillName];
}

- (int) skillModifierAtIndex: (int) index {
    return [(TDLFRPSkill*)[self.skillArray objectAtIndex:index] skillModifier];
}

- (NSInteger) skillCount {
    return [self.skillArray count];
}

- (TDLFRPCharacter*)init
{
    return [self initWithLevel: 1];
}


- (TDLFRPCharacter*)initWithLevel: (short) level
{
    self = [super init];
    if (self) {
        self.level = level;
        self.skillArray = [[NSMutableArray alloc] init];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Acrobatics" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Arcana" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Athletics" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Bluff" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Diplomacy" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Dungeoneering" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Endurance" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Heal" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"History" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Insight" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Intimidate" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Nature" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Perception" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Religion" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Stealth" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Streetwise" skillBase: 0]];
        [self.skillArray addObject: [[TDLFRPSkill alloc] initWithName:@"Thievery" skillBase: 0]];
    }
    return self;
}

@end
