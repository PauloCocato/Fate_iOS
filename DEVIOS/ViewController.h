//
//  ViewController.h
//  DEVIOS
//
//  Created by Paulo Cocato on 05/11/14.
//  Copyright (c) 2014 Paulo Cocato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UITextField *textView1;
@property (nonatomic, strong) IBOutlet UITextField *textView2;
@property (nonatomic, strong) IBOutlet UILabel *lbResult;



@end

