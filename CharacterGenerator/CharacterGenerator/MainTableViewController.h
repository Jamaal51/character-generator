//
//  MainTableViewController.h
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "weekendPlans.h"

@interface MainTableViewController : UITableViewController

@property (nonatomic) NSMutableArray *titles;
@property (nonatomic) weekendPlans *model; //the same object and property can exist/belong to multiple vc

@end
