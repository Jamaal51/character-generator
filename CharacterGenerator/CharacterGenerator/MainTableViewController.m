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
#import "WendPlanCharacter.h"
#import "ResultsPageViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *characters = [[NSMutableArray alloc] init];
    self.wendPlansObjects = characters;
    
    self.model = [[weekendPlans alloc]init];
    [self.model initializeData];

    self.wendPlansObjects = [[NSMutableArray alloc]init]; //move to results

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[CreatePageTableViewController class]]) {
        CreatePageTableViewController *createController = (CreatePageTableViewController *)segue.destinationViewController;
        createController.wendPlansObjects = self.wendPlansObjects;
    } else {
        NSIndexPath *ip = [self.tableView indexPathForSelectedRow];
        WendPlanCharacter *character = [self.titles objectAtIndex:ip.row];//can I change titles to wendplansObjects? 
        ResultsPageViewController *resultsController = (ResultsPageViewController *)segue.destinationViewController;
        resultsController.character = character;
    }
    //we need to create a segue vc that will carry on the same properties as the sender vc
    //this table vc passes then the NSMutableArray property to the segue vc
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.wendPlansObjects.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"forIndexPath:indexPath];
    
    WendPlanCharacter *character = [self.wendPlansObjects objectAtIndex:indexPath.row];
    cell.textLabel.text = character.titleString;
    
    return cell;
}

@end
