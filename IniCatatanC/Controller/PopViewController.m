//
//  PopViewController.m
//  IniCatatanC
//
//  Created by iei19100004 on 07/06/21.
//

#import "PopViewController.h"
#import "PopNextViewController.h"

@interface PopViewController ()

@end

@implementation PopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitle:@"Pop" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = YES;
    [button.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor].active = YES;
    [button.widthAnchor constraintEqualToConstant:128].active = YES;
    [button.centerXAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.centerXAnchor].active = YES;
    
    
//    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    
//    self.navigationItem.hidesBackButton = YES;
}

- (void)buttonAction:(UIButton *) sender{
    PopNextViewController *popNext = [[PopNextViewController alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:detail];
//    [nav setModalPresentationStyle:UIModalPresentationFullScreen];
//    [self presentViewController:nav animated:YES completion:nil];
    [self.navigationController pushViewController:popNext animated:YES];
//    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
