//
//  CreatePageTableViewController.m
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/3/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CreatePageTableViewController.h"
#import "ResultsPageViewController.h"
#import "MainTableViewController.h"

@interface CreatePageTableViewController ()

@end

@implementation CreatePageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[weekendPlans alloc] init];
    [self.model initializeData];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //NSLog(@"check");
    
    ResultsPageViewController *resultsPageViewController = segue.destinationViewController;
    resultsPageViewController.planOne = self.plans;
    resultsPageViewController.titles = self.titles;
    //all this below is probably not needed, but I'll leave it here for now - Ayuna
//    resultsPageViewController.angryEmojiButton = self.angryEmojiButton;
//    resultsPageViewController.crazyEmojiButton = self.crazyEmojiButton;
//    resultsPageViewController.kissEmojiButton = self.kissEmojiButton;
//    resultsPageViewController.poopEmojiButton = self.poopEmojiButton;
//    resultsPageViewController.tearsEmojiButton = self.tearsEmojiButton;
//    resultsPageViewController.fireEmojiButton = self.fireEmojiButton;
}

- (IBAction)buttonTapped:(UIButton *)sender {
    
    if (self.angryEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:0];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:0];
        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);
    }
    if (self.crazyEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:1];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:1];
        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);

    }
    if (self.kissEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:2];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:2];
        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);
    }
    if (self.poopEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:3];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:3];
        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);
    }
    if (self.tearsEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:4];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:4];
        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);

    }
    if (self.fireEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:5];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:5];
        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);
    }
    
}
- (IBAction)foodButtonTapped:(UIButton *)sender {
    
    if (self.chocolateFoodButton.isTouchInside == YES){
        NSLog(@"Chocolate");
    }
    if (self.macFoodButton.isTouchInside == YES){
        NSLog(@"MackyCheese");
    }
    if (self.sandwichFoodButton.isTouchInside == YES){
        NSLog(@"Sandwich");
    }
    if (self.pizzaFoodButton.isTouchInside == YES){
        NSLog(@"Pizza");
    }
    if (self.kaleFoodButton.isTouchInside == YES){
        NSLog(@"Kale");
    }
    if (self.burritoFoodButton.isTouchInside == YES){
        NSLog(@"CHIPOTLE!");
    }
}
- (IBAction)celebButtonTapped:(UIButton *)sender {
    
    if (self.shiaCelebButton.isTouchInside == YES){
        NSLog(@"Shia");
    }
    if (self.jLawCelebButton.isTouchInside == YES){
        NSLog(@"J-Law");
    }
    if (self.steveYeunCelebButton.isTouchInside == YES){
        NSLog(@"Glenn from Walking Dead!");
    }
    if (self.lupitaCelebButton.isTouchInside == YES){
        NSLog(@"Lupita");
    }
    if (self.theRockCelebButton.isTouchInside == YES){
        NSLog(@"THE ROCK!");
    }
    if (self.sofiaVergaraCelebButton.isTouchInside == YES){
        NSLog(@"Sofia");
    }
}

- (IBAction)switchedON:(UISwitch *)sender {
    
    if (self.alcoholSwitch.isOn == YES){
        NSLog(@"Beer Me!");
    } else {
        NSLog(@"Lame...");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
