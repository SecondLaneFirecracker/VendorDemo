//
//  AppDelegate.m
//  VendorDemo
//
//  Created by marksong on 10/11/16.
//  Copyright © 2016 S.R. All rights reserved.
//

#import "AppDelegate.h"
#import "VDPersonModel.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSDictionary *dictionary = @{
                                 @"name" : @"Mark",
                                 @"birthday" : @"2016-11-23 23:59:59",
                                 @"age" : @99
                                 };
    NSError *error;
    VDPersonModel *person = [MTLJSONAdapter modelOfClass:VDPersonModel.class fromJSONDictionary:dictionary error:&error];
    if (error) NSLog(@"%@", error);
    NSLog(@"%@", person);
    NSDictionary *personDictionary = [MTLJSONAdapter JSONDictionaryFromModel:person error:&error];
    NSLog(@"%@", personDictionary);
    
    return YES;
}

@end
