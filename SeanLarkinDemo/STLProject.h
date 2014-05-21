//
//  STLProject.h
//  SeanLarkinDemo
//
//  Created by Cole Voss on 5/15/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STLProject : NSObject

@property (strong) NSString *projectName;
@property (strong) NSString *projectDescription;
@property (strong) NSString *primaryLanguage;
@property (strong) NSString *projectNotes;

+ (STLProject *)projectWithProjectName:(NSString *)projectName
       projectDescription:(NSString *)projectDescription
          primaryLanguage:(NSString *)primaryLanguage;

@end
