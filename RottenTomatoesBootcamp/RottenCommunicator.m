//
//  RottenCommunicator.m
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import "RottenCommunicator.h"
#import "RottenCommunicatorDelegate.h"

@implementation RottenCommunicator

- (void) searchMovies
{
    NSString *urlAsString = @"http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?limit=50&country=us&apikey=cub9wdnvd482cd37gsbwb7yf";
    NSURL *url = [NSURL URLWithString:urlAsString];
    
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        if(error){
            [self.delegate fetchingMoviesFailedWithError:error];
        }
        else{
            [self.delegate receivedMovieJSON:data];
        }
    }];
}

@end
