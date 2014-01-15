//
//  MovieBuilder.m
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import "MovieBuilder.h"
#import "Movie.h"

@implementation MovieBuilder
+ (NSArray *)moviesFromJSON:(NSData *)objectNotation error:(NSError **)error
{
    
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *movies = [[NSMutableArray alloc] init];
    
    
    NSArray *results = [parsedObject valueForKey:@"movies"];
    //NSLog(@"Count %ld", results.count);
    
    //could be something wrong in here with the parsing
    
    for (NSDictionary *movieDic in results) {
        Movie *movie = [[Movie alloc] init];
        
        //WHAT DOES THIS DO?
        
        [movie setMovietitle:[movieDic objectForKey:@"title"]];
        [movies addObject:movie];
    }
    
    return movies;
    
}

@end