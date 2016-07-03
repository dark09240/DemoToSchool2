//
//  PickerViewViewController.h
//  Day2
//
//  Created by Lycodes_Dong on 7/2/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>{

    NSArray *array;

}

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property (weak, nonatomic) IBOutlet UIPickerView *myPickerView;

@end
