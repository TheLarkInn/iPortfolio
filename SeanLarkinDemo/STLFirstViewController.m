//
//  STLFirstViewController.m
//  SeanLarkinDemo
//
//  Created by Cole Voss on 5/15/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import "STLFirstViewController.h"
#import "STLProject.h"

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
    [self clearProjectFields];
    self.projectsTableView.delegate = self;
    self.projectsTableView.dataSource = self;
    self.projectsArray = (NSMutableArray *)@[
                                             [STLProject projectWithProjectName:@"MacPractice"
                                                             projectDescription:@"The only Native Mac Medical/Dental/Chiropractic/Specialty Practitioner Software used by over 30,000 clients in 25 countries. Written in Objective-C and uses a client-server system with a MySQL database. Performed lots of bug fixing and feature enhancements for the “EMR Ability/Module” of the software. Added and Implemented a LiveChat system in which clients can directly speak with support representatives through a 3rd party chat server. This was implemented in both Objective-C and JavaScriptCore Framework."
                                                                primaryLanguage:@"Objective-C/Cocoa"],
                                             [STLProject projectWithProjectName:@"Ticket Tracker"
                                                             projectDescription:@"In house MacPractice Mac Native ticket, accounts, and developers management system. Was the backbone of MacPractice serving support tickets to representatives, storing accounging, ledger, and timeclock information for payroll, and bug tickets and scrum estimations for engineers. Added multiple features and enhancements to the product in all three aformentioned fields."
                                                                primaryLanguage:@"Objective-C / Cocoa"],
                                             [STLProject projectWithProjectName:@"Project Tracker"
                                                             projectDescription:@"In house Ruby/Sinatra web application using the DataMapper ORM. Allowed users of a specific department to track their time on special projects and then report on them. Had timeclocking, user management, resources. Front-end powered by MVC Backbone.js framework along."
                                                                primaryLanguage:@"Ruby/Sinatra"],
                                             [STLProject projectWithProjectName:@"LilyBot(ChatBot)"
                                                             projectDescription:@"In house MacPractice XMPP/Jabber protocol and Ruby based chat client. Harnessed the power of iMessages/Jabber to make time consuming information available to staff on the fly through a few commands. Used to scrape web data, parse specilty data structs and returns did basic math and calculation functions."
                                                                primaryLanguage:@"Ruby"],
                                             [STLProject projectWithProjectName:@"Quality Assurance Scripting"
                                                             projectDescription:@"Responsible for testing all aspects of the MacPractice software. Requires familiarity with Quality Assurance procedures. Fully trained in processes to identify, report, and verify bugs and bug fixes. Approve versions of software before they are released to clients. Wrote Jython based GUI scripts to test basic MacPractice functions using the Sikuli application."
                                                                primaryLanguage:@"Python/Javascript"],
                                             [STLProject projectWithProjectName:@"CDA and Eligibility Transaction Parsers"
                                                             projectDescription:@"Light weight web apps using Ruby/Sinatra to take a RAW CDA or ANSI Eligibility File and parse and read the data. Results were a success for the EDI department and both utilities are featured on their EDI Tools page."
                                                                primaryLanguage:@"Ruby/Sinatra"]];
    self.projectsTableView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.projectsArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *TableIdentifier = @"MyIdentifier";

    UITableViewCell *tableCell = [tableView dequeueReusableCellWithIdentifier:TableIdentifier];

    if (tableCell == nil)
    {
        tableCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableIdentifier];
    }

    STLProject *project = [self.projectsArray objectAtIndex:indexPath.row];
    tableCell.textLabel.text = project.projectName;
    tableCell.detailTextLabel.text = project.projectDescription;

    return tableCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    STLProject *project = [self.projectsArray objectAtIndex:indexPath.row];

    self.projectNameLabel.text = project.projectName;
    self.projectDescriptionLabel.text = project.projectDescription;
    self.primaryLanguageLabel.text = project.primaryLanguage;

}

-(void)clearProjectFields
{
    self.projectDescriptionLabel.text   = nil;
    self.projectNameLabel.text          = nil;
    self.primaryLanguageLabel.text      = nil;
}
@end
