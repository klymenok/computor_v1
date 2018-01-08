//
//  FirstViewController.m
//  computor_v1
//
//  Created by Oleksii Klymenok on 1/8/18.
//  Copyright © 2018 Klymenok Alexey. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do view setup here.
}

- (IBAction)setComplexity:(NSButton *)sender {
    [self performSegueWithIdentifier:@"createForm" sender: self];
}

- (void)prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender{
    ViewController *dest = segue.destinationController;
    dest.x = 1;
}
@end
