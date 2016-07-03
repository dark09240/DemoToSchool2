//
//  TableViewViewController.h
//  Day2
//
//  Created by Lycodes_Dong on 7/2/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{

    NSArray *array;

}

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end
