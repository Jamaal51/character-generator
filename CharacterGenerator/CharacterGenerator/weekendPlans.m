//
//  weekendPlans.m
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "weekendPlans.h"

@implementation weekendPlans

-(void) initializeData {
    
    [self initializeWeekendPlans];
    [self initializeCelebrity];
    [self initializeTitles]; 
    
}

-(void) initializeWeekendPlans {
    
    self.weekendPlans = @[
                          @"You will hang out at the library.",
                          @"You will go to the beach.",
                          @"You will go on a road trip!",
                          @"Your grandma will call and ask you to help her clean the house",
                          @"You will stay home and watch Netflix",
                          @"You will hit up the hottest club in the city!"
                          ];
    
}


-(void) initializeCelebrity {
    
    
}

-(void) initializeTitles {
    self.titles = @[
                    @"Read a book",
                    @"Beach",
                    @"Road trip",
                    @"Grandma",
                    @"Netflix",
                    @"Party"
                    ];
}


@end
