//
//  FirstViewController.h
//  computor_v1
//
//  Created by Oleksii Klymenok on 1/8/18.
//  Copyright © 2018 Klymenok Alexey. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ViewController.h"

@interface FirstViewController : NSViewController
@property (weak) IBOutlet NSTextFieldCell *complexity;
@property (weak) IBOutlet NSButton *submitBtn;
- (IBAction)setComplexity:(NSButton *)sender;


@end
