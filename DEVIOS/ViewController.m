//
//  ViewController.m
//  DEVIOS
//
//  Created by Paulo Cocato on 05/11/14.
//  Copyright (c) 2014 Paulo Cocato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    if (textField == self.textView1) {
        [self.textView1 becomeFirstResponder];
        [self.textView2 resignFirstResponder];
    } else {
        [self.textView2 becomeFirstResponder];
        [self.textView1 resignFirstResponder];
    }
}

- (IBAction)calc:(id)sender {
    [self.textView2 resignFirstResponder];
    [self.textView1 resignFirstResponder];
    
    [self calcWithNumber1:self.textView1.text andWithNumber2:self.textView2.text];
}

- (void)calcWithNumber1:(NSString *)number1 andWithNumber2:(NSString *)number2 {
    NSInteger result = [number1 integerValue] + [number2 integerValue];
    [self.lbResult setText:[NSString stringWithFormat:@"%ld",(long)result]];
}

@end
