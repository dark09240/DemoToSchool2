//
//  ActivityIndicatorViewViewController.h
//  Day2
//
//  Created by Lycodes_Dong on 7/2/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityIndicatorViewViewController : UIViewController{

    NSTimer *timer;
    
}

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *myActivityIndicatorView;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end
