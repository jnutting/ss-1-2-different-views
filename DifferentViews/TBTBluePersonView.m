//
//  TBTBluePersonView.m
//  DifferentViews
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "TBTBluePersonView.h"
#import "TBTPerson.h"

@implementation TBTBluePersonView

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.color = [UIColor blueColor];
    }
    return self;
}

@end
