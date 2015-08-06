//
//  ResultsPageViewController.m
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/3/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ResultsPageViewController.h"
#import "weekendPlans.h"
#import "CreatePageTableViewController.h"

@interface ResultsPageViewController ()

@end

@implementation ResultsPageViewController
- (IBAction)buttonTapped:(UIButton *)sender {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.labelPlans.text = self.planOne;

    //[self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
