//
//  RottenManager.h
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

#import "RottenManagerDelegate.h"
#import "RottenCommunicatorDelegate.h"

@class RottenCommunicator;

@interface RottenManager : NSObject<RottenCommunicatorDelegate>
@property (strong, nonatomic) RottenCommunicator *communicator;
@property (weak, nonatomic) id<RottenManagerDelegate> delegate;

-(void)fetchMovies;

@end

