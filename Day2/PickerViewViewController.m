//
//  PickerViewViewController.m
//  Day2
//
//  Created by Lycodes_Dong on 7/2/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "PickerViewViewController.h"

@interface PickerViewViewController ()

@end

@implementation PickerViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = @[@"1",@"2",@"3",@"5",@"6"];
    
}

#pragma mark PickerView Delegate

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {

    self.myLabel.text = [array objectAtIndex:row];

}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return [array objectAtIndex:row];
    
}

#pragma mark PickerView DataSoure

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {

    return 1;

}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {

    return [array count];

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
