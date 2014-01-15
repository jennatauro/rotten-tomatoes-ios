//
//  MovieBuilder.h
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieBuilder : NSObject

+(NSArray *) moviesFromJSON:(NSData *)objectNotation error:(NSError **)error;

@end
