//
//  TableViewViewController.m
//  Day2
//
//  Created by Lycodes_Dong on 7/2/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "TableViewViewController.h"

@interface TableViewViewController ()

@end

@implementation TableViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableView DataSoure

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [array count];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell;
    
    if (!cell) {
        cell = [[UITableViewCell alloc]init];
    }
    
    cell.textLabel.text = [array objectAtIndex:indexPath.row];
    
    return cell;

}

#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    NSLog(@"%@",[array objectAtIndex:indexPath.row]);

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
