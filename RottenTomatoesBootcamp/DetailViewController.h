//
//  DetailViewController.h
//  RottenTomatoesBootcamp
//
//  Created by Jenna Tauro on 1/14/2014.
//  Copyright (c) 2014 RottenTomatoes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *DetailScrollView;

@property (strong, nonatomic) NSString *detailImageUrl;
@property (strong, nonatomic) NSString *detailMovieTitle;
@property (strong, nonatomic) NSString *detailSynopsis;


@end
