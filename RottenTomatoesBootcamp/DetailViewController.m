//
//  DetailViewController.m
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import "DetailViewController.h"

#import "Movie.h"
#import "RottenManager.h"
#import "RottenCommunicator.h"

@interface DetailViewController ()
- (void)configureView;
- (void)putStuffInDetailScrollView:(NSString *)detailImageUrl andTitle:(NSString *)detailTitle;
@end

@implementation DetailViewController


#pragma mark - Managing the detail item

-(void)putStuffInDetailScrollView:(NSString *)detailImageUrl andTitle:(NSString *)detailTitle
{
    [self.DetailScrollView setContentSize:CGSizeMake(self.DetailScrollView.frame.size.width, 700)];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 80, 150, 250)];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:detailImageUrl]]];
    imageView.image = image;
    
    [self.DetailScrollView addSubview:imageView];
    
    [self.view addSubview:self.DetailScrollView];
    
    self.navigationItem.title = detailTitle;
}


- (void)configureView
{
    // Update the user interface for the detail item.

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self putStuffInDetailScrollView:self.detailImageUrl andTitle:self.detailMovieTitle];
    
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
