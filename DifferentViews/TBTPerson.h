//
//  TBTPerson.h
//  BigMethod
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TBTPerson : NSObject

@property (copy, nonatomic) NSString *firstName;
@property (copy, nonatomic) NSString *lastName;
@property (copy, nonatomic) NSString *occupation;
@property (copy, nonatomic) NSString *streetAddress;
@property (copy, nonatomic) NSString *city;
@property (copy, nonatomic) NSString *postalCode;
@property (copy, nonatomic) NSString *country;
@property (copy, nonatomic) NSString *emailAddress;
@property (copy, nonatomic) NSString *telephoneNumber;
@property (strong, nonatomic) NSDate *birthDate;

+ (instancetype)personWithFirstName:(NSString *)firstName
                           lastName:(NSString *)lastName
                         occupation:(NSString *)occupation
                      streetAddress:(NSString *)streetAddress
                               city:(NSString *)city
                         postalCode:(NSString *)postalCode
                            country:(NSString *)country
                       emailAddress:(NSString *)emailAddress
                    telephoneNumber:(NSString *)telephoneNumber
                          birthDate:(NSDate *)birthDate;

+ (NSArray *)somePeople;

@end
