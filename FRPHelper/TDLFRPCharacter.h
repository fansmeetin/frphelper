//
//  TDLFRPCharacter.h
//  FRPHelper
//
//  Created by Nuri Tasdemir on 13/12/13.
//  Copyright (c) 2013 Nuri Tasdemir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TDLFRPCharacter : NSObject

@property short level;
- (TDLFRPCharacter*)init;
- (TDLFRPCharacter*)initWithLevel: (short) level;
- (NSInteger) skillCount;
- (NSString*) skillNameAtIndex: (int) index;
- (short) skillModifierAtIndex: (int) index;

@end
