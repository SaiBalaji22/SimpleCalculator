//
//  ViewController.h
//  Calculator
//
//  Created by Sai Balaji on 13/04/22.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController{
@private NSString* result;
}
@property (weak) IBOutlet NSTextField *FirstNumberTextField;
@property (weak) IBOutlet NSTextField *SecondNumberTextField;

- (IBAction)addBtnPressed:(id)sender;
- (IBAction)subBtnPressed:(id)sender;
- (IBAction)multBtnPressed:(id)sender;
- (IBAction)divBtnPressed:(id)sender;
- (IBAction)calculateBtnPressed:(id)sender;

@end

