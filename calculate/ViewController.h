//
//  ViewController.h
//  calculate
//
//  Created by Andrey Kowalsky on 27.09.15.
//  Copyright © 2015 Andrey Kowalsky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    CGFloat x, y;
    NSInteger operation;
    BOOL enterFlag, yFlag;
    //
}

@property (weak, nonatomic) IBOutlet UILabel *screenLabel;

- (IBAction)clearAllButton:(id)sender;
- (IBAction)clearButton:(id)sender;
- (IBAction)inversButton:(id)sender;
- (IBAction)operationButton:(id)sender;
- (IBAction)digitButton:(id)sender;// Кооаоао

//lolllllh////////
//dkfjgnkfg

@end

