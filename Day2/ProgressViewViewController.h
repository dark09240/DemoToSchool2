//
//  ProgressViewViewController.h
//  Day2
//
//  Created by Lycodes_Dong on 7/2/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressViewViewController : UIViewController{

    NSTimer *timer;
    float x;

}

@property (weak, nonatomic) IBOutlet UIProgressView *myProgressView;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end
