//
//  RottenCommunicatorDelegate.h
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//


@protocol RottenCommunicatorDelegate

-(void)receivedMovieJSON:(NSData *)objectNotation;
-(void)fetchingMoviesFailedWithError: (NSError *)error;

@end
