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
#import "WendPlanCharacter.h"

@interface CreatePageTableViewController ()

@end

@implementation CreatePageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.model = [[weekendPlans alloc] init];
    [self.model initializeData];

    [self.alcoholSwitch setOn:NO animated:YES];
    
    //new lines of code
    self.planCharacter = [[WendPlanCharacter alloc]init];
    NSMutableArray *wendPlansObjects = [[NSMutableArray alloc]init];
    self.wendPlansObjects = wendPlansObjects;

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"check");
    
    WendPlanCharacter *newCharacter = [[WendPlanCharacter alloc] init];
    newCharacter.planString = self.plans;
    newCharacter.celebString = self.celeb;
    newCharacter.foodString = self.food;
    newCharacter.alcoholString = self.alcohol;
    
    [self.titles addObject:newCharacter];
    
    ResultsPageViewController *resultsPageViewController = segue.destinationViewController;
    resultsPageViewController.character = newCharacter;
//    resultsPageViewController.titles = self.titles;
//    resultsPageViewController.planOne = self.plans;
//    resultsPageViewController.planTwo = self.celeb;
//    resultsPageViewController.planThree = self.food;
//    resultsPageViewController.planFour = self.alcohol;
    
    //new code
    [self.wendPlansObjects addObject:_planCharacter];
    self.planCharacter.planString = resultsPageViewController.planOne;
    
    //resultsPageViewController.planOne = self.planCharacter.planString;
    
    

}


- (IBAction)buttonTapped:(UIButton *)sender {

    if (self.angryEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:0];
        self.alcohol = [self.model.alcohol  objectAtIndex:0];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:0];
//        [self.titles addObject:_titleToDisplayInMainTableVC];
        //new line of code below
//        [self.wendPlansObjects addObject:<#(id)#>]
        NSLog(@"%@", self.plans);
        [_angryEmojiButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
    if (self.crazyEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:1];
        self.alcohol = [self.model.alcohol  objectAtIndex:1];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:1];
//        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);
        [_crazyEmojiButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];


    }
    if (self.kissEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:2];
        self.alcohol = [self.model.alcohol  objectAtIndex:2];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:2];
//        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);
        [_kissEmojiButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
    if (self.poopEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:3];
        self.alcohol = [self.model.alcohol  objectAtIndex:3];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:3];
//        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);
        [_poopEmojiButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
    if (self.tearsEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:4];
        self.alcohol = [self.model.alcohol  objectAtIndex:4];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:4];
//        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);
        [_tearsEmojiButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
    if (self.fireEmojiButton.isTouchInside == YES){
        self.plans = [self.model.weekendPlans objectAtIndex:5];
        self.alcohol = [self.model.alcohol  objectAtIndex:5];
        self.titleToDisplayInMainTableVC = [self.model.titles objectAtIndex:5];
//        [self.titles addObject:_titleToDisplayInMainTableVC];
        NSLog(@"%@", self.plans);
        [_fireEmojiButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }

}
- (IBAction)celebButtonTapped:(UIButton *)sender {

    if (self.shiaCelebButton.isTouchInside == YES){
        self.celeb = [self.model.celebrity objectAtIndex:0];
        NSLog(@"%@", self.celeb);
        [_shiaCelebButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];
    }
    if (self.jLawCelebButton.isTouchInside == YES){
        self.celeb = [self.model.celebrity objectAtIndex:1];
        NSLog(@"%@", self.celeb);
        [_jLawCelebButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];
    }
    if (self.steveYeunCelebButton.isTouchInside == YES){
        self.celeb = [self.model.celebrity objectAtIndex:2];
        NSLog(@"%@", self.celeb);
        [_steveYeunCelebButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];
    }
    if (self.lupitaCelebButton.isTouchInside == YES){
        self.celeb = [self.model.celebrity objectAtIndex:3];
        NSLog(@"%@", self.celeb);
        [_lupitaCelebButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];
    }
    if (self.theRockCelebButton.isTouchInside == YES){
        self.celeb = [self.model.celebrity objectAtIndex:4];
        NSLog(@"%@", self.celeb);
        [_theRockCelebButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
    if (self.sofiaVergaraCelebButton.isTouchInside == YES){
        self.celeb = [self.model.celebrity objectAtIndex:5];
        NSLog(@"%@", self.celeb);
        [_sofiaVergaraCelebButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
}
- (IBAction)foodButtonTapped:(UIButton *)sender {

    if (self.chocolateFoodButton.isTouchInside == YES){
        self.food = [self.model.food objectAtIndex:0];
        NSLog(@"%@", self.food);
        [_chocolateFoodButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
    if (self.macFoodButton.isTouchInside == YES){
        self.food = [self.model.food objectAtIndex:1];
        NSLog(@"%@", self.food);
        [_macFoodButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
    if (self.sandwichFoodButton.isTouchInside == YES){
        self.food = [self.model.food objectAtIndex:2];
        NSLog(@"%@", self.food);
        [_sandwichFoodButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
    if (self.pizzaFoodButton.isTouchInside == YES){
        self.food = [self.model.food objectAtIndex:3];
        NSLog(@"%@", self.food);
        [_pizzaFoodButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
    if (self.kaleFoodButton.isTouchInside == YES){
        self.food = [self.model.food objectAtIndex:4];
        NSLog(@"%@", self.food);
        [_kaleFoodButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];
        //[[self.kaleFoodButton = [setImage: UIImage imageNamed: @"00FF00.png"] forState: UIControlStateHighlighted];

    }
    if (self.burritoFoodButton.isTouchInside == YES){
        self.food = [self.model.food objectAtIndex:5];
        NSLog(@"%@", self.food);
        [_burritoFoodButton setImage: [UIImage imageNamed: @"00FF00.png"] forState:UIControlStateHighlighted];

    }
}
- (IBAction)switchedON:(UISwitch *)sender {


    if (sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:0]){
        self.alcohol = [self.model.alcohol objectAtIndex:6];
        NSLog(@"%@", self.alcohol);
    }
    if (!sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:0]){
        self.alcohol = [self.model.alcohol objectAtIndex:0];
        NSLog(@"%@", self.alcohol);
    }
    if (sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:1]){
        self.alcohol = [self.model.alcohol objectAtIndex:7];
        NSLog(@"%@", self.alcohol);
    }
    if (!sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:1]){
        self.alcohol = [self.model.alcohol objectAtIndex:1];
        NSLog(@"%@", self.alcohol);
    }
    if (sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:2]){
        self.alcohol = [self.model.alcohol objectAtIndex:8];
        NSLog(@"%@", self.alcohol);
    }
    if (!sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:2]){
        self.alcohol = [self.model.alcohol objectAtIndex:2];
        NSLog(@"%@", self.alcohol);
    }
    if (sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:3]){
        self.alcohol = [self.model.alcohol objectAtIndex:9];
        NSLog(@"%@", self.alcohol);
    }
    if (!sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:3]){
        self.alcohol = [self.model.alcohol objectAtIndex:3];
        NSLog(@"%@", self.alcohol);
    }
    if (sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:4]){
        self.alcohol = [self.model.alcohol objectAtIndex:10];
        NSLog(@"%@", self.alcohol);
    }
    if (!sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:4]){
        self.alcohol = [self.model.alcohol objectAtIndex:4];
        NSLog(@"%@", self.alcohol);
    }
    if (sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:5]){
        self.alcohol = [self.model.alcohol objectAtIndex:11];
        NSLog(@"%@", self.alcohol);
    }
    if (!sender.isOn && self.plans == [self.model.weekendPlans objectAtIndex:5]){
        self.alcohol = [self.model.alcohol objectAtIndex:5];
        NSLog(@"%@", self.alcohol);
    }

//bekbckbjfe

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
