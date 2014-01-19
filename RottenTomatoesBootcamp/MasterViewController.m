//
//  MasterViewController.m
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

#import "DetailCell.h"
#import "Movie.h"
#import "RottenManager.h"
#import "RottenCommunicator.h"

@interface MasterViewController () <RottenManagerDelegate>{
    NSArray *_movies;
    RottenManager *_manager;
}
@end

@implementation MasterViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    _manager = [[RottenManager alloc] init];
    _manager.communicator = [[RottenCommunicator alloc] init];
    _manager.communicator.delegate = _manager;
    _manager.delegate = self;
    
    [self startFetchingMovies];
}

- (void)startFetchingMovies
{
    [_manager fetchMovies];
}

- (void)didReceiveMovies:(NSArray *)movies
{
    _movies = movies;
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

- (void)fetchingMoviesFailedWithError:(NSError *)error
{
    NSLog(@"Error %@; %@", error, [error localizedDescription]);
}



#pragma mark - Accessors

#pragma mark - Notification Observer

#pragma mark - RottenManagerDelegate

#pragma mark - Table View

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _movies.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Movie *movie = _movies[indexPath.row];
    [cell.textLabel setText:movie.movietitle];
    cell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:movie.imageUrl]]];
    
    return cell;
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"showDetail"]){
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Movie *movie = _movies[indexPath.row];
//        [[segue destinationViewController] setDetailItem:movie.synopsis andDetailImage:movie.imageUrl];
//        [[segue destinationViewController] setDetailTitle:movie.movietitle];
        [[segue destinationViewController] setDetailImageUrl:movie.imageUrl];
        [[segue destinationViewController] setDetailMovieTitle:movie.movietitle];
        [[segue destinationViewController] setDetailSynopsis:movie.synopsis];
    }
}



@end
