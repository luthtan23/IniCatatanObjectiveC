//
//  DetailViewController.m
//  IniCatatanC
//
//  Created by iei19100004 on 19/05/21.
//

#import "DetailViewController.h"
#import "TableViewController.h"
#import "NextTableViewController.h"
#import "PopViewController.h"
#import "TableStaticSettingViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor cyanColor];
    
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backButtonClicked:)];
//
//    self.navigationItem.leftBarButtonItem = backButton;
    
    [self setButtonTableViewAttr];
    [self setButtonNextTableViewAttr];
    [self setButtonPop];
    [self setTableStaticSetting];
    
    
}

-(void) setButtonTableViewAttr {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitle:@"table" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setFrame:CGRectMake(8, 100, 75, 50)];
    [button addTarget:self action:@selector(tableView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void) setButtonNextTableViewAttr {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitle:@"nextTable" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setFrame:CGRectMake(108, 100, 75,50)];
    [button addTarget:self action:@selector(nextTableView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void) setButtonPop {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitle:@"pop" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setFrame:CGRectMake(208, 100, 75,50)];
    [button addTarget:self action:@selector(popViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void) setTableStaticSetting {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitle:@"table static" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setFrame:CGRectMake(308, 100, 75,50)];
    [button addTarget:self action:@selector(tableStaticViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

//-(void) backButtonClicked: (UIBarButtonItem *) sender{
//    [self dismissViewControllerAnimated:YES completion:nil];
//}

-(void) tableView: (UIButton *) sender {
    TableViewController *table = [[TableViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:table];
    [nav setModalPresentationStyle:UIModalPresentationFullScreen];
    [self presentViewController:nav animated:YES completion:nil];
}

-(void) nextTableView: (UIButton *) sender {
    NextTableViewController *table = [[NextTableViewController alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:table];
//    [nav setModalPresentationStyle:UIModalPresentationFullScreen];
//    [self presentViewController:nav animated:YES completion:nil];
    [self.navigationController pushViewController:table animated:YES];
}

-(void) popViewController: (UIButton *) sender {
    PopViewController *pop = [[PopViewController alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:pop];
//    [nav setModalPresentationStyle:UIModalPresentationFullScreen];
//    [self presentViewController:nav animated:YES completion:nil];
    
    [self.navigationController pushViewController:pop animated:YES];
}


-(void) tableStaticViewController: (UIButton *) sender {
    TableStaticSettingViewController *tableStatic = [[TableStaticSettingViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tableStatic];
    [self presentViewController:nav animated:YES completion:nil];
}



@end
