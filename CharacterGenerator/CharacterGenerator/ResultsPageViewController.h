//
//  ResultsPageViewController.h
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/3/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "weekendPlans.h"
#import "CreatePageTableViewController.h"

@interface ResultsPageViewController : UIViewController

@property (nonatomic) NSString *planOne;

@property (weak, nonatomic) IBOutlet UILabel *labelPlans;
@property (weak, nonatomic) IBOutlet UILabel *labelCeleb;
@property (weak, nonatomic) IBOutlet UILabel *labelFood;
@property (nonatomic) weekendPlans *model;//not sure yet if it's needed here, may be deleted later but not now :)
@property (nonatomic) NSMutableArray *titles;//not sure yet if it's needed here, may be deleted later but not now :)

//all this below is probably not needed, but I'll leave it here for now - Ayuna
//@property (weak, nonatomic) IBOutlet UIButton *angryEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *crazyEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *kissEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *poopEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *tearsEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *fireEmojiButton;
//

@property (weak, nonatomic) IBOutlet UIButton *HomeButton;

@end
