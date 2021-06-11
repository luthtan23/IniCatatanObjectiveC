//
//  TableViewController.m
//  IniCatatanC
//
//  Created by iei19100004 on 19/05/21.
//

#import "TableViewController.h"
#import "CatatanModel.h"

@interface TableViewController ()

@end

@implementation TableViewController

NSArray *catatanModelArray;

NSString *cellId = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    
    catatanModelArray = [[NSMutableArray alloc] init];
    [self setModel];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"CUAKSS" style:UIBarButtonItemStylePlain target:self action:@selector(backButtonClicked:)];
    
    self.navigationItem.leftBarButtonItem = backButton;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *defaultCell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    CatatanModel *model = [[CatatanModel alloc] init];
    model = catatanModelArray[indexPath.row];
    defaultCell.textLabel.text = model.name;
    return defaultCell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return catatanModelArray.count;
}

-(void) backButtonClicked: (UIBarButtonItem *) sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) setModel {
    
    catatanModelArray = @[
        [[CatatanModel alloc] initWithName:@"Ahmad Dahlan" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Ahmad Yani" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Sutomo" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Gatot Soebroto" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Ki Hadjar Dewantara" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Mohamad Hatta" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Soedirman" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Soekarno" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Soepomo" emailId:@"TEST"]
    ];

}
@end
