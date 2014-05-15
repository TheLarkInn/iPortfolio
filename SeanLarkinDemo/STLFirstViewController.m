//
//  STLFirstViewController.m
//  SeanLarkinDemo
//
//  Created by Cole Voss on 5/15/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import "STLFirstViewController.h"

@interface STLFirstViewController ()

@end

@implementation STLFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
