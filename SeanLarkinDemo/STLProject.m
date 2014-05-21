//
//  STLProject.m
//  SeanLarkinDemo
//
//  Created by Cole Voss on 5/15/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import "STLProject.h"

@implementation STLProject

- (id)init
{
    self = [super init];
    if (self) {

    }
    return self;
}

+ (STLProject *)projectWithProjectName:(NSString *)projectName projectDescription:(NSString *)projectDescription primaryLanguage:(NSString *)primaryLanguage
{
    STLProject *project = [[STLProject alloc] init];

    project.projectName = projectName;
    project.projectDescription = projectDescription;
    project.primaryLanguage = primaryLanguage;

    return project;
}

@end
