//
//  VDPersonModel.h
//  VendorDemo
//
//  Created by marksong on 11/23/16.
//  Copyright © 2016 S.R. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface VDPersonModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSDate *birthday;
@property (nonatomic) NSUInteger age;

@end
