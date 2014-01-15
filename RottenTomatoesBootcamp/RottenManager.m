//
//  RottenManager.m
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import "RottenManager.h"
#import "MovieBuilder.h"
#import "RottenCommunicator.h"

@implementation RottenManager
- (void)fetchMovies
{
    [self.communicator searchMovies];
}

#pragma mark - MeetupCommunicatorDelegate

- (void)receivedMovieJSON:(NSData *)objectNotation
{
    NSError *error = nil;
    NSArray *movies = [MovieBuilder moviesFromJSON:objectNotation error:&error];
    
    if (error != nil) {
        [self.delegate fetchingMoviesFailedWithError:error];
        
    } else {
        [self.delegate didReceiveMovies:movies];
    }
}

- (void)fetchingMoviesFailedWithError:(NSError *)error
{
    [self.delegate fetchingMoviesFailedWithError:error];
}

@end
