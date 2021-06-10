//
//  TableViewController.h
//  IniCatatanC
//
//  Created by iei19100004 on 19/05/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class CatatanModel;
@interface TableViewController : UITableViewController
{
    CatatanModel *catatanModel;
}

@property(nonatomic, retain) UITableViewCell *table;

@end

NS_ASSUME_NONNULL_END
