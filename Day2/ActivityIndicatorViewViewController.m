//
//  ActivityIndicatorViewViewController.m
//  Day2
//
//  Created by Lycodes_Dong on 7/2/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ActivityIndicatorViewViewController.h"

@interface ActivityIndicatorViewViewController ()

@end

@implementation ActivityIndicatorViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self myActivityIndicatorViewStart];
    
}

- (void)myActivityIndicatorViewStart {
    
    [self.myActivityIndicatorView startAnimating];
    
    self.myLabel.text = @"Loading...";
    
    timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(myActivityIndicatorViewStop) userInfo:nil repeats:YES];

}

- (void)myActivityIndicatorViewStop {

    [timer invalidate];
    [self.myActivityIndicatorView stopAnimating];
    self.myLabel.text = @"Finished.";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reset:(id)sender {

    [self myActivityIndicatorViewStart];

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
