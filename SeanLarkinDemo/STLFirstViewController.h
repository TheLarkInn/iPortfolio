//
//  STLFirstViewController.h
//  SeanLarkinDemo
//
//  Created by Cole Voss on 5/15/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STLFirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *projectsTableView;
@property (strong) NSMutableArray *projectsArray;
@property (weak, nonatomic) IBOutlet UILabel *projectNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *projectDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *primaryLanguageLabel;

@end
