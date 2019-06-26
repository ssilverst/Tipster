//
//  SettingsViewController.m
//  Tipster
//
//  Created by selinons on 6/25/19.
//  Copyright © 2019 codepath. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *frugalField;
@property (weak, nonatomic) IBOutlet UITextField *standardField;
@property (weak, nonatomic) IBOutlet UITextField *generousField;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    NSArray *defaultTips = [defaults objectForKey:@"default_tip_percentages"];
//
//    self.frugalField.text = defaultTips[0];
//    self.standardField.text = defaultTips[1];
//    self.generousField.text = defaultTips[2];
    // Do any additional setup after loading the view.
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    //NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //change
//    [defaults setObject:@[@(15), @(20),
//                          @(22)] forKey:@"default_tip_percentages"];
//    [defaults synchronize];
//    NSLog(@"View will disappear");
}
- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
