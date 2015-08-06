//
//  ResultsPageViewController.h
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/3/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultsPageViewController : UIViewController

@property (nonatomic) NSString *planOne;

@property (weak, nonatomic) IBOutlet UILabel *labelPlans;
@property (weak, nonatomic) IBOutlet UILabel *labelCeleb;
@property (weak, nonatomic) IBOutlet UILabel *labelFood;

//add the property title 

@property (weak, nonatomic) IBOutlet UIButton *HomeButton;

@end
