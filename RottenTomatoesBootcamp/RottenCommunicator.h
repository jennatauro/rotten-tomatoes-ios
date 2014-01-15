//
//  RottenCommunicator.h
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RottenCommunicatorDelegate;

@interface RottenCommunicator : NSObject
@property (weak, nonatomic) id<RottenCommunicatorDelegate> delegate;

-(void) searchMovies;

@end
