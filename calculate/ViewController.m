//
//  ViewController.m
//  calculate
//
//  Created by Andrey Kowalsky on 27.09.15.
//  Copyright © 2015 Andrey Kowalsky. All rights reserved.
//

#import "ViewController.h"

enum {
    
    //
    OP_PLUS = 1001,
    OP_MINUS = 1002,
    OP_MULTY = 1003,
    OP_DIV = 1004,
};

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

- (IBAction)clearAllButton:(id)sender {
    
    x = 0;
    y = 0;
    
    enterFlag = NO;
    yFlag = NO;
    
    [self calcScreen];
}

- (IBAction)clearButton:(id)sender {
    x = 0;
    [self calcScreen];
}

- (IBAction)inversButton:(id)sender {
    x = -x;
    [self calcScreen];
}

- (IBAction)operationButton:(id)sender{
    
    if(!enterFlag && yFlag){
        
        switch (operation) {
                
            case OP_PLUS:
                x = y + x;
                break;
                
            case OP_MINUS:
                x = y - x;
                break;
                
            case OP_MULTY:
                x = y * x;
                break;
                
            case OP_DIV:
                x = y / x;
                break;
                
            default:
                break;
        }
    }
    
    y = x;
    
    enterFlag = YES;
    yFlag = YES;
    
    operation = [sender tag];
    
    [self calcScreen];
}

- (IBAction)digitButton:(id)sender {
    
    if(enterFlag) {
        y = x;
        x = 0;
        enterFlag = NO;
    }
    
    x = (10.f * x) + [sender tag];
    
    [self calcScreen];
}

- (void) calcScreen {
    
    self.screenLabel.text = [NSString stringWithFormat:@"%.f", x];
    
    NSLog(@"ok %f", x);
}

@end
