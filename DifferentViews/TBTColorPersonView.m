//
//  TBTColorPersonView.m
//  
//
//  Created by JN on 2014-6-17.
//
//

#import "TBTColorPersonView.h"

#import "TBTPerson.h"

@implementation TBTColorPersonView

- (void)drawRect:(CGRect)rect {
    [self drawBackground];
    [self drawBorder];
    [self drawPersonDescription];
}

#pragma mark Internals

- (UIColor *)lightColor
{
    CGFloat red, green, blue, alpha;
    [self.color getRed:&red green:&green blue:&blue alpha:&alpha];
    UIColor *lightColor = [UIColor colorWithRed:red + 0.5
                                          green:green + 0.5
                                           blue:blue + 0.5
                                          alpha:alpha];
    return lightColor;
}

- (void)drawBackground {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [self.lightColor setFill];
    CGContextFillRect(context, self.bounds);
    
}

- (void)drawBorder {
    CGContextRef context = UIGraphicsGetCurrentContext();

    [self.color setStroke];
    CGContextSetLineWidth(context, 8);
    CGContextStrokeRect(context, self.bounds);
}

- (void)drawPersonDescription {
    NSString *personInfo = [NSString stringWithFormat:
                            @"%@\n%@",
                            self.person.firstName,
                            self.person.lastName];
    NSDictionary *fontAttributes = @{
                                     NSFontAttributeName : [UIFont boldSystemFontOfSize:36],
                                     NSForegroundColorAttributeName : [UIColor blackColor]
                                     };
    CGRect textRect = CGRectInset(self.bounds, 10, 10);
    [personInfo drawInRect:textRect
            withAttributes:fontAttributes];
}

@end
