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

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor blueColor];
    
    CGFloat red, green, blue, alpha;
    [color getRed:&red green:&green blue:&blue alpha:&alpha];
    UIColor *lightColor = [UIColor colorWithRed:red + 0.5
                                          green:green + 0.5
                                           blue:blue + 0.5
                                          alpha:alpha];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [lightColor setFill];
    CGContextFillRect(context, self.bounds);
    
    [color setStroke];
    CGContextSetLineWidth(context, 8);
    
    NSString *personInfo = [NSString stringWithFormat:
                            @"%@\n%@",
                            self.person.firstName,
                            self.person.lastName];
    NSDictionary *fontAttributes = @{
                                     NSFontAttributeName : [UIFont boldSystemFontOfSize:36],
                                     NSForegroundColorAttributeName : [UIColor blackColor]
                                     };
    [personInfo drawInRect:self.bounds
            withAttributes:fontAttributes];
    CGContextStrokeRect(context, self.bounds);
}

@end
