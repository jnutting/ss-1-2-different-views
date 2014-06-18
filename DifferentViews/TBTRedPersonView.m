//
//  TBTRedPersonView.m
//  DifferentViews
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "TBTRedPersonView.h"
#import "TBTPerson.h"

@implementation TBTRedPersonView

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.color = [UIColor redColor];
    }
    return self;
}

@end
