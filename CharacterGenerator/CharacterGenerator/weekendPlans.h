//
//  weekendPlans.h
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface weekendPlans : NSObject

-(void) initializeData;
@property (nonatomic) NSArray * weekendPlans;
@property (nonatomic) NSArray * celebrity;
@property (nonatomic) NSArray * titles; 
-(void) initializeTitles;

@end
