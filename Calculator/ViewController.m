//
//  ViewController.m
//  Calculator
//
//  Created by Sai Balaji on 13/04/22.
//

#import "ViewController.h"

@implementation ViewController

   
- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
}

- (void)viewDidAppear{
    [super viewDidAppear];
    NSButton* maxBtn = [self.view.window standardWindowButton:NSWindowZoomButton];
    [maxBtn setEnabled:FALSE];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)calculateBtnPressed:(id)sender {
    NSAlert* alert = [[NSAlert alloc] init];
    [alert setMessageText:@"Result is"];
    [alert setInformativeText:self->result];
    [alert addButtonWithTitle:@"Ok"];
    [alert runModal];
    
}

- (IBAction)divBtnPressed:(id)sender {
    @try {
        int n1 = [self.FirstNumberTextField.stringValue intValue];
        int n2 = [self.SecondNumberTextField.stringValue intValue];
        int r = n1 / n2;
        self->result = [NSString stringWithFormat:@"%d",r];
    } @catch (NSException *exception) {
        NSLog(@"EX %@",exception.reason);
    }
}

- (IBAction)multBtnPressed:(id)sender {
    int n1 = [self.FirstNumberTextField.stringValue intValue];
    int n2 = [self.SecondNumberTextField.stringValue intValue];
    int r = n1 * n2;
    self->result = [NSString stringWithFormat:@"%d",r];
}

- (IBAction)subBtnPressed:(id)sender {
    int n1 = [self.FirstNumberTextField.stringValue intValue];
    int n2 = [self.SecondNumberTextField.stringValue intValue];
    int r = n1 - n2;
    self->result = [NSString stringWithFormat:@"%d",r];
    
}

- (IBAction)addBtnPressed:(id)sender {
    int n1 = [self.FirstNumberTextField.stringValue intValue];
    int n2 = [self.SecondNumberTextField.stringValue intValue];
    int r = n1 + n2;
    self->result = [NSString stringWithFormat:@"%d",r];
  
}

@end
