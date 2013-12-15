//
//  TDLCharacterViewController.m
//  FRPHelper
//
//  Created by Nuri Tasdemir on 13/12/13.
//  Copyright (c) 2013 Nuri Tasdemir. All rights reserved.
//

#import "TDLCharacterViewController.h"
#import "TDLFRPCharacter.h"
#import "TDLSkillCollectionViewCell.h"

@interface TDLCharacterViewController ()

@property (strong) TDLFRPCharacter* character;

@end

@implementation TDLCharacterViewController

//Delegate methods
-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView*) collectionView {
    return 1;
}

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.character skillCount];
}


- (UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TDLSkillCollectionViewCell* aCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"skillCollectionCell" forIndexPath:indexPath];
    aCell.skillNameLabel.text = [self.character skillNameAtIndex:indexPath.row];
    aCell.skillModifierLabel.text = @"%d",[self.character skillModifierAtIndex:indexPath.row];
    
    return aCell;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.character = [[TDLFRPCharacter alloc] initWithLevel: 6];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
