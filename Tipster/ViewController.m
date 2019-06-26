//
//  ViewController.m
//  Tipster
//
//  Created by selinons on 6/25/19.
//  Copyright © 2019 codepath. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
@property (weak, nonatomic) IBOutlet UIImageView *moneyView;
@property (weak, nonatomic) IBOutlet UITextField *peopleField;
@property (weak, nonatomic) IBOutlet UILabel *individual;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.moneyView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"moneysign.jpg"]];

}

- (IBAction)onTap:(id)sender {
    NSLog(@"Hello");
    [self.view endEditing:YES];
}
//double tip = 0.0;
- (IBAction)onEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    NSArray *defaultTips = [defaults objectForKey:@"default_tip_percentages"];
//    if (defaultTips)
//    {
//        NSLog(@"%@", defaultTips);
//    }
    NSLog(@"%f", bill);
      NSArray *percentages = @[@(0.15), @(0.2), @(0.22)];
//    if (!defaultTips)
//    {
//        percentages = @[@(0.15), @(0.2), @(0.22)];
//    }
//    else
//    {
//        percentages[0] = @([defaultTips[0] doubleValue]/100);
//        percentages[1] = @([defaultTips[1] doubleValue]/100);
//        percentages[2] = @([defaultTips[2] doubleValue]/100);
//    }
    //returns a 0, 1, or 2: nested square brackets needed to call func
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    
    double tip = tipPercentage * bill;
    double total = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f%", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"%.2f%", total];
    double people = [self.peopleField.text doubleValue];
    NSLog(@"%f", people);
    double newVal = [self.totalLabel.text doubleValue] / people;
    NSNumber *myDoubleNumber = [NSNumber numberWithDouble:newVal];
    self.individual.text = [@"$" stringByAppendingString:[myDoubleNumber stringValue]];
}
- (IBAction)onEditPeople:(id)sender {
    double people = [self.peopleField.text doubleValue];
    NSLog(@"%f", people);
    // NSLog(@"hiiashfoa");
    double newVal = [self.totalLabel.text doubleValue] / people;
    NSLog(@"%f", [self.totalLabel.text doubleValue]);
    NSNumber *myDoubleNumber = [NSNumber numberWithDouble:newVal];
    // NSLog(@"%@", myDoubleNumber);
    self.individual.text = [@"$" stringByAppendingString:[myDoubleNumber stringValue]]; // [NSString stringWithFormat:@"$%.2f%", [self.totalLabel.text doubleValue]/people];
}


//Actions to make animations when clicking the text field.
- (IBAction)onEditingDidBegin:(id)sender {
    [UIView animateWithDuration:0.2 animations:^{
        self.billField.frame = CGRectMake(self.billField.frame.origin.x, self.billField.frame.origin.y+30, self.billField.frame.size.width, self.billField.frame.size.height);
        self.
        self.tipLabel.alpha = 0;

    }];
    
}
- (IBAction)onEditingDidEnd:(id)sender {
    CGRect newFrame = self.billField.frame;
    newFrame.origin.y -= 30;
    [UIView animateWithDuration:0.2 animations:^{
        self.billField.frame = newFrame;
        
        self.tipLabel.alpha = 1;
    }];
}

@end
