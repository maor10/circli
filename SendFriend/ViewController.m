//
//  ViewController.m
//  SendFriend
//
//  Created by Maor Kern on 6/9/16.
//  Copyright © 2016 Maor Kern. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[User user] getForId:@"1" completion:^(BaseEntity* entity){
        [[User user] getGroups:^(NSArray *groups){
            NSLog(@"%lu", (unsigned long)[groups count]);
            if ([groups count] > 0) {
                
                
            }
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
