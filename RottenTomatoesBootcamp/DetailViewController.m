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
@end

@implementation DetailViewController

#pragma mark - Managing the detail item


- (void)setDetailItem:(id)newDetailItem andDetailImage:(id)newDetailImage
{
    _detailItem = newDetailItem;
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 80, 150, 250)];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:newDetailImage]]];
    imageView.image = image;
    
    [self.view addSubview:imageView];
    
}

- (void)setDetailTitle:(id)newDetailTitle
{
  self.navigationItem.title = newDetailTitle;
}


- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
