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
- (void)putStuffInDetailScrollView:(NSString *)detailImageUrl andTitle:(NSString *)detailTitle andSyn:(NSString *)detailSynopsis;
@end

@implementation DetailViewController


#pragma mark - Managing the detail item

-(void)putStuffInDetailScrollView:(NSString *)detailImageUrl andTitle:(NSString *)detailTitle andSyn:(NSString *)detailSynopsis
{
    //set scrollview
    [self.DetailScrollView setContentSize:CGSizeMake(self.DetailScrollView.frame.size.width, 700)];
    
    //setimageview
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 150, 250)];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:detailImageUrl]]];
    imageView.image = image;
    
    [self.DetailScrollView addSubview:imageView];
    
    [self.view addSubview:self.DetailScrollView];
    
    //set title
    self.navigationItem.title = detailTitle;
    
    //set synopsis label
    UILabel *SynopsisLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 270, self.DetailScrollView.frame.size.width -10, 100)];
    SynopsisLabel.text=detailSynopsis;
    [SynopsisLabel setNumberOfLines:0];
    [SynopsisLabel sizeToFit];
    [self.DetailScrollView addSubview:SynopsisLabel];
    
    
}


- (void)configureView
{
    // Update the user interface for the detail item.

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self putStuffInDetailScrollView:self.detailImageUrl andTitle:self.detailMovieTitle andSyn:self.detailSynopsis];
    
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
