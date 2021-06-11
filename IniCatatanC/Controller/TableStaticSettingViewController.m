//
//  TableStaticSettingViewController.m
//  IniCatatanC
//
//  Created by iei19100004 on 10/06/21.
//

#import "TableStaticSettingViewController.h"
#import "SimpleStaticTableViewCell.h"
#import "ItemTableCell.h"

@interface TableStaticSettingViewController () <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>

@end

@implementation TableStaticSettingViewController

@synthesize simpleTableView;

NSString *cellIdStatic = @"cellId";
NSArray* array;
NSInteger firstRow = 0;
NSInteger secondRow = 1;
BOOL collapse = NO;
NSMutableArray* expandableArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    simpleTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    simpleTableView.delegate = self;
    simpleTableView.dataSource = self;
    simpleTableView.showsHorizontalScrollIndicator = NO;
    simpleTableView.showsVerticalScrollIndicator = NO;
    [simpleTableView registerNib:[UINib nibWithNibName:@"SimpleStaticTableViewCell" bundle:nil] forCellReuseIdentifier:cellIdStatic];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"CUAKSS" style:UIBarButtonItemStylePlain target:self action:@selector(backButtonClicked:)];
    
    self.navigationItem.leftBarButtonItem = backButton;
    
    expandableArray = @[@"One", @"Two"].mutableCopy;
    
    [self setConstraint];
    
    array = [[NSArray alloc] init];
    
    [self setValue];
    
}

- (void) setConstraint{
    UIView *template = [[UIView alloc] init];
    template.backgroundColor = [UIColor secondarySystemBackgroundColor];
    [self.view addSubview:template];

    template.translatesAutoresizingMaskIntoConstraints = NO;
    [template.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [template.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [template.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [template.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;


    [template addSubview:simpleTableView];
    
    simpleTableView.translatesAutoresizingMaskIntoConstraints = NO;
    [simpleTableView.topAnchor constraintEqualToAnchor:template.topAnchor].active = YES;
    [simpleTableView.bottomAnchor constraintEqualToAnchor:template.bottomAnchor].active = YES;
    [simpleTableView.leadingAnchor constraintEqualToAnchor:template.leadingAnchor constant:20].active = YES;
    [simpleTableView.trailingAnchor constraintEqualToAnchor:template.trailingAnchor constant:-20].active = YES;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SimpleStaticTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdStatic forIndexPath:indexPath];
    if (indexPath.section == 0) {
        [cell configureCell];
        if (indexPath.row == 0) {
//            firstRow = 0;
            cell.activityTodo.placeholder = @"Title";
        }
        if (indexPath.row == 1) {
//            secondRow = 1;
            cell.activityTodo.placeholder = @"Description";
        }
    } else if (indexPath.section == 1) {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        ItemTableCell *itemTable = [[ItemTableCell alloc] init];
        itemTable = array[indexPath.row];
        [cell configureSectionTwo:itemTable];
    } else if (indexPath.section == 2) {
        [cell configurePriority];
    } else if (indexPath.section == 3) {
        [cell configureImageActivity];
    }
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger defaultSection = 0;
    if (section == 0) {
        return 2;
    } else if(section == 1) {
        return 2;
    } else if (section == 2) {
        return 1;
    } else if (section == 3) {
        return 1;
    }
    return defaultSection;
}

-(void) backButtonClicked: (UIBarButtonItem *) sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) setValue {
    array = @[
        [[ItemTableCell alloc] initWithTitle:@"Date" detail:@"detail" imageItemTable:@"calendar"],
        [[ItemTableCell alloc] initWithTitle:@"Time" detail:@"detail" imageItemTable:@"timer"]
        
    ];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSInteger defaultSection = 0;
     if (indexPath.section == 3) {
         return 300;
     } else {
         return 54;
     }
     return defaultSection;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *defaultSection = nil;
    if (section == 3) {
        return @"Add Image Activity";
    }
    return defaultSection;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            //expand here
        }
        
    }

}

- (void)viewWillDisappear:(BOOL)animated{
    [self setTextFieldValue:firstRow];
    [self setTextFieldValue:secondRow];
}

- (void) setTextFieldValue:(NSInteger) rowAt{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:rowAt inSection:0];
    SimpleStaticTableViewCell *cell = [simpleTableView cellForRowAtIndexPath:indexPath];
    cell.activityTodo.delegate = self;
    if (rowAt == firstRow) {
        NSString *text = cell.activityTodo.text;
        NSLog(@"ini log %@", text);
    }
    if (rowAt == secondRow) {
        NSString *text = cell.activityTodo.text;
        NSLog(@"ini juga log %@", text);
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.view endEditing:YES];
    return false;
}

    
@end
