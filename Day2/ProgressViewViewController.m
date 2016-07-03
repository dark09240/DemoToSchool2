//
//  ProgressViewViewController.m
//  Day2
//
//  Created by Lycodes_Dong on 7/2/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ProgressViewViewController.h"

@interface ProgressViewViewController ()

@end

@implementation ProgressViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self run];
    
}

- (void)run {

    x = 0.0f;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(timeOut) userInfo:nil repeats:YES];

}

- (void)timeOut {

    x += 0.01f;
    self.myProgressView.progress = x;
    NSString *string = [NSString stringWithFormat:@"Loading...%.0f％",x * 100];
    self.myLabel.text = string;
    if (x >= 1.0f) {
        [timer invalidate];
        self.myLabel.text = @"Finished.";
    }

}

- (IBAction)reset:(id)sender {
    
    [self run];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
