//
//  SliderViewController.m
//  Day2
//
//  Created by Lycodes_Dong on 7/2/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "SliderViewController.h"

@interface SliderViewController ()

@end

@implementation SliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)myRedSlider:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    
    self.myRedLabel.text = [NSString stringWithFormat:@"%.1f",slider.value];
    
    [self changeBackgroundColor];
    
}

- (IBAction)myGreenSlider:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    
    self.myGreenLabel.text = [NSString stringWithFormat:@"%.1f",slider.value];
    
    [self changeBackgroundColor];
    
}

- (IBAction)myBlueSlider:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    
    self.myBlueLabel.text = [NSString stringWithFormat:@"%.1f",slider.value];
    
    [self changeBackgroundColor];
    
}

- (void)changeBackgroundColor {

    CGFloat red = [self.myRedLabel.text floatValue] / 255.0;
    CGFloat green = [self.myGreenLabel.text floatValue] / 255.0;
    CGFloat blue = [self.myBlueLabel.text floatValue] / 255.0;
    
    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];

}

@end
