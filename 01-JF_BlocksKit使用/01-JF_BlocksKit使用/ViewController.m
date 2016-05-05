//
//  ViewController.m
//  01-JF_BlocksKit使用
//
//  Created by JF on 16/5/5.
//  Copyright © 2016年 JF. All rights reserved.
//

#import "ViewController.h"

#import <BlocksKit+UIKit.h>

#import <NSObject+BKAssociatedObjects.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    
    [self test_addProperity];
    
}

/**
 *  测试-动态增加属性
 */
- (void)test_addProperity {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    [cell bk_associateValue:@"22岁" withKey:@"age"];
    
    NSLog(@"age = %@", [cell bk_associatedValueForKey:@"age"]);
}

/**
 *  测试-UIActionSheet
 */
- (void)test_UIAlertView {
    UIAlertView *alert = [UIAlertView bk_showAlertViewWithTitle:@"提示" message:@"这是一条提示" cancelButtonTitle:@"取消" otherButtonTitles:@[@"确认"] handler:^(UIAlertView *alertView, NSInteger buttonIndex) {
        if (buttonIndex == 0) { // 取消
            NSLog(@"buttonITitle = 取消");
        }
        NSLog(@"buttonIndex = %ld", buttonIndex);
    }];
    
    [alert show];
}

/**
 *  测试-UIActionSheet
 */
- (void)test_UIActionSheet {
    UIActionSheet *action = [[UIActionSheet alloc] bk_initWithTitle:@"daichao"];
    
    [action bk_addButtonWithTitle:@"1" handler:^{
        NSLog(@"1");
    }];
    [action bk_addButtonWithTitle:@"2" handler:^{
        NSLog(@"2");
    }];
    [action bk_setDestructiveButtonWithTitle:@"销毁" handler:^{
        NSLog(@"销毁");
    }];
    [action bk_addButtonWithTitle:@"3" handler:^{
        NSLog(@"3");
    }];
    
    [action bk_setCancelButtonWithTitle:@"取消" handler:^{
        NSLog(@"取消");
    }];
    
    [action showInView:self.view];
}

@end
