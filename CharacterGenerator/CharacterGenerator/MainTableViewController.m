//
//  MainTableViewController.m
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "MainTableViewController.h"
#import "weekendPlans.h"
#import "CreatePageTableViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[weekendPlans alloc]init];
    [self.model initializeData];

    NSMutableArray *titles = [[NSMutableArray alloc] init];
    self.titles = titles; //property titles (to the left from the equal sign) equals to NSMutableArray *titles on line right above it)  

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    CreatePageTableViewController *createController = (CreatePageTableViewController *)segue.destinationViewController; //we need to create a segue vc that will carry on the same properties as the sender vc
    createController.titles = self.titles; //this table vc passes then the NSMutableArray property to the segue vc
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titles.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"forIndexPath:indexPath];
    
    NSString *title = [self.titles objectAtIndex:indexPath.row];
    cell.textLabel.text = title;
    
    return cell;
}

@end
