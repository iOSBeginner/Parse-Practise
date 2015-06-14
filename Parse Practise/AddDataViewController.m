//
//  AddDataViewController.m
//  Parse Practise
//
//  Created by 蘇健豪1 on 2015/6/14.
//  Copyright (c) 2015年 生蠔. All rights reserved.
//

#import "AddDataViewController.h"

#import <Parse/Parse.h>

@interface AddDataViewController ()

@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumber;

@end

@implementation AddDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)addNewData:(id)sender {
    PFObject *object = [PFObject objectWithClassName:@"MemberData"];
    object[@"name"] = self.name.text;
    object[@"phoneNumber"] = self.phoneNumber.text;
    [object saveInBackground];
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
