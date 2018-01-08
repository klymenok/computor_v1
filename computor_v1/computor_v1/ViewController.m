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
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)calculate:(NSButton *)sender {
    NSString *x0 = [self.x0 stringValue];
    NSString *x1 = [self.x1 stringValue];
    NSString *x2 = [self.x2 stringValue];
    
    self.x0_text.stringValue = x0;
    self.x1_text.stringValue = x1;
    self.x2_text.stringValue = x2;
    
//    NSTextField *textField;
//
//    textField = [[NSTextField alloc] initWithFrame:NSMakeRect(10, 10, 50, 50)];
//    [textField setStringValue:@"My Label"];
//    [textField setBezeled:NO];
//    [textField setDrawsBackground:NO];
//    [textField setEditable:NO];
//    [textField setSelectable:NO];
//    [[self scroll] addSubview:textField];
}

- (IBAction)applyComplexity:(NSButton *)sender {
    
    self.complexity = self.complexityFeild.stringValue;
    NSScrollView *scrollView;
    
    scrollView = [[NSScrollView alloc] initWithFrame:NSMakeRect(50, 50, 700, 100)];
    NSTextField *end = [self createTextField:@" = 0" editable:NO withCoord:670];
    [scrollView addSubview:end];
    NSTextField *x0 = [self createTextField:@"x0" editable:NO withCoord:620];
    [scrollView addSubview:x0];
    [self.view addSubview:scrollView];
    
}

-(NSTextField *)createTextField:(NSString *)stringValue editable:(BOOL)editable withCoord:(int)coord_y{
    NSTextField *field = [[NSTextField alloc] initWithFrame:NSMakeRect((CGFloat)coord_y, 45, 50, 50)];
    field.editable = editable;
    field.selectable = NO;
    field.drawsBackground = NO;
    field.bezeled = NO;
    field.stringValue = stringValue;
    return field;
}




@end
