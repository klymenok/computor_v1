//
//  ViewController.h
//  computor_v1
//
//  Created by Klymenok Alexey on 11/24/17.
//  Copyright © 2017 Klymenok Alexey. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController {
}
@property NSString *complexity;

@property (weak) IBOutlet NSTextField *x0;
@property (weak) IBOutlet NSTextField *x1;
@property (weak) IBOutlet NSTextField *x2;
@property (weak) IBOutlet NSTextField *x2_text;
@property (weak) IBOutlet NSTextField *x1_text;
@property (weak) IBOutlet NSTextField *x0_text;
@property (weak) IBOutlet NSTextField *complexityLabel;
@property (weak) IBOutlet NSTextFieldCell *complexityFeild;
- (IBAction)applyComplexity:(NSButton *)sender;
- (NSTextField *)createTextField:(NSString *)stringValue editable:(BOOL)editable withCoord:(int)coord_y;

@end
