//
//  CreatePageTableViewController.h
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/3/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "weekendPlans.h"
#import "MainTableViewController.h"

@interface CreatePageTableViewController : UITableViewController

@property (nonatomic) weekendPlans *model;
@property (nonatomic) NSString *plans;
@property (nonatomic) NSMutableArray *titles; 

// Emoji Buttons
@property (weak, nonatomic) IBOutlet UIButton *angryEmojiButton;
@property (weak, nonatomic) IBOutlet UIButton *crazyEmojiButton;
@property (weak, nonatomic) IBOutlet UIButton *kissEmojiButton;
@property (weak, nonatomic) IBOutlet UIButton *poopEmojiButton;
@property (weak, nonatomic) IBOutlet UIButton *tearsEmojiButton;
@property (weak, nonatomic) IBOutlet UIButton *fireEmojiButton;
// Food Buttons
@property (weak, nonatomic) IBOutlet UIButton *chocolateFoodButton;
@property (weak, nonatomic) IBOutlet UIButton *macFoodButton;
@property (weak, nonatomic) IBOutlet UIButton *sandwichFoodButton;
@property (weak, nonatomic) IBOutlet UIButton *pizzaFoodButton;
@property (weak, nonatomic) IBOutlet UIButton *kaleFoodButton;
@property (weak, nonatomic) IBOutlet UIButton *burritoFoodButton;
// Celebrity Buttons
@property (weak, nonatomic) IBOutlet UIButton *shiaCelebButton;
@property (weak, nonatomic) IBOutlet UIButton *jLawCelebButton;
@property (weak, nonatomic) IBOutlet UIButton *steveYeunCelebButton;
@property (weak, nonatomic) IBOutlet UIButton *lupitaCelebButton;
@property (weak, nonatomic) IBOutlet UIButton *theRockCelebButton;
@property (weak, nonatomic) IBOutlet UIButton *sofiaVergaraCelebButton;
// Alcohol UI Switch
@property (weak, nonatomic) IBOutlet UISwitch *alcoholSwitch;


@end
