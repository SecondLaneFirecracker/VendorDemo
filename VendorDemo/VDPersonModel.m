//
//  VDPersonModel.m
//  VendorDemo
//
//  Created by marksong on 11/23/16.
//  Copyright © 2016 S.R. All rights reserved.
//

#import "VDPersonModel.h"

static NSString * const kPropertyKeyName = @"name";
static NSString * const kPropertyKeyAge = @"age";
static NSString * const kPropertyKeyBirthday = @"birthday";

@implementation VDPersonModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"name"        : kPropertyKeyName,
             @"birthday"    : kPropertyKeyBirthday,
             @"age"         : kPropertyKeyAge
             };
}

+ (NSValueTransformer *)birthdayJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSString *dateString, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter dateFromString:dateString];
    } reverseBlock:^id(NSDate *date, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter stringFromDate:date];
    }];
}

+ (NSDateFormatter *)dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    
    return dateFormatter;
}

@end
