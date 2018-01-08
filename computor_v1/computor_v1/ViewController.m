//
//  ViewController.m
//  computor_v1
//
//  Created by Klymenok Alexey on 11/24/17.
//  Copyright © 2017 Klymenok Alexey. All rights reserved.
//

#import "ViewController.h"
#import "Test.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Test *t = [[Test alloc] init];
    [t test:25];
    
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
