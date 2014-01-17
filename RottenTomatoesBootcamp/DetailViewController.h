//
//  DetailViewController.h
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

-(void)setDetailItem:(id)detailItem andDetailImage:(id)detailImage;

-(void)setDetailTitle:(id)detailTitle;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
