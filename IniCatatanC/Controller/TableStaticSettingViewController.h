//
//  TableStaticSettingViewController.h
//  IniCatatanC
//
//  Created by iei19100004 on 10/06/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableStaticSettingViewController : UIViewController

@property(nonatomic, retain) UITableView *simpleTableView;
@property(nonatomic,retain) UIDatePicker *datePicker;
@property(nonatomic,retain) UIView *pickerView;
@property(nonatomic,retain) UIView *timeBackgroundView;
@property(nonatomic,retain) UIButton *pickerButton;
@property (strong, nonatomic) UIImagePickerController *imagePicker;

@property (strong, nonatomic) UIButton *imageButton;


@end

NS_ASSUME_NONNULL_END
