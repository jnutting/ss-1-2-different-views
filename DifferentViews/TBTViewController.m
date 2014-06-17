//
//  TBTViewController.m
//  DifferentViews
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "TBTViewController.h"
#import "TBTPerson.h"
#import "TBTRedPersonView.h"
#import "TBTBluePersonView.h"

@interface TBTViewController ()

@property (strong, nonatomic) TBTPerson *person1;
@property (strong, nonatomic) TBTPerson *person2;
@property (weak, nonatomic) IBOutlet TBTRedPersonView *redPersonView;
@property (weak, nonatomic) IBOutlet TBTBluePersonView *bluePersonView;

@end

@implementation TBTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self getResources];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self setupDisplay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Internals

- (void)getResources {
    self.person1 = [TBTPerson somePeople].firstObject;
    self.person2 = [TBTPerson somePeople].lastObject;
}

- (void)setupDisplay {
    self.redPersonView.person = self.person1;
    self.bluePersonView.person = self.person2;
}

@end
