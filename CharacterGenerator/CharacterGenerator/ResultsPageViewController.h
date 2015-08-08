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
#import "WendPlanCharacter.h"

@interface ResultsPageViewController : UIViewController

@property (nonatomic) NSString *planOne;
@property (nonatomic) NSString *planTwo;
@property (nonatomic) NSString *planThree;
@property (nonatomic) NSString *planFour;

@property (weak, nonatomic) IBOutlet UILabel *labelPlans;
@property (weak, nonatomic) IBOutlet UILabel *labelCeleb;
@property (weak, nonatomic) IBOutlet UILabel *labelFood;
@property (weak, nonatomic) IBOutlet UILabel *labelAlcohol;

@property (nonatomic) weekendPlans *model;//not sure yet if it's needed here, may be deleted later but not now :)
@property (nonatomic) NSMutableArray *titles;//not sure yet if it's needed here, may be deleted later but not now :)

@property (weak, nonatomic) IBOutlet UIButton *HomeButton;

//new code
@property (nonatomic) NSMutableArray *wendPlansObjects;
//new code Sat morning
@property (nonatomic) WendPlanCharacter *character;

@end
