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

- (void)viewWillAppear {
    [super viewWillAppear];
    self.coords = 700;
    self.complexity = 5;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

-(NSString)getStringFromIntegers:(int)value withSecondVale:(int) secondValue withThirdValue:(int)thirdValue {
    
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
    self.complexity = self.complexityFeild.intValue;
    NSScrollView *scrollView;
    NSFont *font;
    
    font = [NSFont fontWithName:@"main" size:80];
    
    scrollView = [[NSScrollView alloc] initWithFrame:NSMakeRect(50, 50, 700, 100)];
    NSTextField *end = [self createTextField:@" = 0" editable:NO withWidth:80];
    [end setBackgroundColor:[NSColor colorWithRed:0 green:0 blue:0 alpha:1]];
    [end setFont:[NSFont systemFontOfSize:30]];
    [scrollView addSubview:end];
    int i = 0;
    while (i < self.complexity) {
        NSTextField *new_x = [self createTextField:@"x0" editable:NO withWidth:50];
        NSTextField *new_field =[self createTextField:@"" editable:YES withWidth:70];
        [new_field setBackgroundColor:[NSColor colorWithRed:0 green:0 blue:0 alpha:1]];
        [new_field setFont:[NSFont systemFontOfSize:20]];
        [new_x setBackgroundColor:[NSColor colorWithRed:0 green:0 blue:0 alpha:1]];
        [new_x setFont:[NSFont systemFontOfSize:30]];
        
        [scrollView addSubview:new_x];
        [scrollView addSubview:new_field];
        i++;
        if (i < self.complexity) {
            CGRect frame = CGRectMake(self.coords, 30, 30, 30);
            NSPopUpButton *button = [[NSPopUpButton alloc] initWithFrame:frame pullsDown:YES];
            [button addItemWithTitle:@"+"];
            [button addItemWithTitle:@"-"];
            [scrollView addSubview:button];
            self.coords -= 30;
        }
    }
//    NSTextField *x0 = [self createTextField:@"x0" editable:NO withCoord:500];
//    [scrollView addSubview:x0];
    [self.view addSubview:scrollView];
    self.coords = 700;
}

-(NSTextField *)createTextField:(NSString *)stringValue editable:(BOOL)editable withWidth:(int)width{
    self.coords -= width;
    NSTextField *field = [[NSTextField alloc] initWithFrame:NSMakeRect(self.coords, 30, width, 40)];
    [NSTextField insertValue:<#(nonnull id)#> atIndex:<#(NSUInteger)#> inPropertyWithKey:<#(nonnull NSString *)#>]
    field.editable = editable;
    field.selectable = editable;
    field.drawsBackground = YES;
    field.bezeled = NO;
    field.stringValue = stringValue;
    
    return field;
}




@end
