//
//  RottenManagerDelegate.h
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RottenManagerDelegate <NSObject>
-(void)didReceiveMovies:(NSArray *)movies;
-(void)fetchingMoviesFailedWithError:(NSError *)error;
@end
