//
//  STLSecondViewController.m
//  SeanLarkinDemo
//
//  Created by Cole Voss on 5/15/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import "STLSecondViewController.h"

@interface STLSecondViewController ()

@end

@implementation STLSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
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
