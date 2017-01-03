//
//  ViewController.m
//  Sample
//
//  Created by murugan on 28/11/16.
//  Copyright © 2016 murugan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //load your data here.
        dispatch_async(dispatch_get_main_queue(), ^{
          self.navigationItem.title=@"Heading Display";
        });
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnHome:(id)sender {
    
    ListViewController *lv=[[Common storyboard]instantiateViewControllerWithIdentifier:@"ListViewController"];
    [self.navigationController pushViewController:lv animated:YES];
    
}
@end
