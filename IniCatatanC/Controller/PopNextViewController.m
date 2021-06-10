//
//  PopNextViewController.m
//  IniCatatanC
//
//  Created by iei19100004 on 07/06/21.
//

#import "PopNextViewController.h"

@interface PopNextViewController () <UITextFieldDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@end

@implementation PopNextViewController

@synthesize toDoAddImageBtn, tempImage, imageBackground;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.imagePicker = [[UIImagePickerController alloc] init];
    self.imagePicker.allowsEditing = NO;
    self.imagePicker.delegate = self;
    [self setConstraint];
    [self setButtonToDo];
}

- (void)toDoAddImageBtnAction:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera] && [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum]) {
        UIAlertController * alert=   [UIAlertController
                                      alertControllerWithTitle:@"Photo source"
                                      message:@"Please select your photo source method"
                                      preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* cameraRoll = [UIAlertAction
                             actionWithTitle:@"Choose photo"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 self.imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
                                 [self presentViewController:self.imagePicker animated:YES completion:nil];
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
        UIAlertAction* camera = [UIAlertAction
                             actionWithTitle:@"Take photo"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 self.imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
            self.imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
            self.imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
            self.imagePicker.showsCameraControls = NO;
            [self presentViewController:self.imagePicker animated:YES completion: ^{
                [self.imagePicker takePicture];
            }];
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
        UIAlertAction* cancel = [UIAlertAction
                                 actionWithTitle:@"Cancel"
                                 style:UIAlertActionStyleDefault
                                 handler:^(UIAlertAction * action)
                                 {
                                     [alert dismissViewControllerAnimated:YES completion:nil];
                                 }];
        
        [alert addAction:cameraRoll];
        [alert addAction:camera];
        [alert addAction:cancel];
        
        [self presentViewController:alert animated:YES completion:nil];
    } else if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum]) {
        self.imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        [self presentViewController:self.imagePicker animated:YES completion:nil];
    }
    
}

-(void) setButtonToDo {
    toDoAddImageBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [toDoAddImageBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [toDoAddImageBtn setTitle:@"table" forState:UIControlStateNormal];
    toDoAddImageBtn.backgroundColor = [UIColor lightGrayColor];
    [toDoAddImageBtn setFrame:CGRectMake(8, 100, 75, 50)];
    [toDoAddImageBtn addTarget:self action:@selector(toDoAddImageBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:toDoAddImageBtn];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [toDoAddImageBtn setImage:image forState:UIControlStateNormal];
    [tempImage setImage:image];
    if (self.imagePicker.sourceType == UIImagePickerControllerSourceTypeCamera)
        UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerControllerDidCancel: (UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    if (error)
        {
            UILabel *error = [[UILabel alloc] initWithFrame:CGRectMake(70, 300, self.view.frame.size.width -90, 50)];
            error.text = @"Lembah Hijau Jl. Mawar Raya No. 31, Cikarang Selatan, Bekasi";
            [self.view addSubview:error];
            
        }
    /*else
        [self callAlertViewWithTitle:@"Success" andMessage:@"Image saved to Photo Album"];*/
}

- (void) setConstraint{
    UIView *picker = [[UIView alloc] init];
    [self.view addSubview: picker];
    
    picker.translatesAutoresizingMaskIntoConstraints = NO;
    [picker.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = YES;
    [picker.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-self.view.frame.size.height/2].active = YES;
    [picker.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [picker.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    
    UIView *item = [[UIView alloc] init];
    [self.view addSubview:item];
    
    item.translatesAutoresizingMaskIntoConstraints = NO;
    [item.topAnchor constraintEqualToAnchor:picker.bottomAnchor].active = YES;
    [item.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [item.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [item.trailingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    
    imageBackground = [[UIImageView alloc] init];
    imageBackground.image = [UIImage imageNamed:@"background"];
    [picker addSubview:imageBackground];
    
    imageBackground.translatesAutoresizingMaskIntoConstraints = NO;
    [imageBackground.topAnchor constraintEqualToAnchor:picker.topAnchor].active = YES;
    [imageBackground.bottomAnchor constraintEqualToAnchor:picker.bottomAnchor].active = YES;
    [imageBackground.leadingAnchor constraintEqualToAnchor:picker.leadingAnchor].active = YES;
    [imageBackground.trailingAnchor constraintEqualToAnchor:picker.trailingAnchor].active = YES;
    
    tempImage = [[UIImageView alloc] init];
    tempImage.image = [UIImage imageNamed:@"john-snow-image"];
    [picker addSubview:tempImage];
    
    tempImage.translatesAutoresizingMaskIntoConstraints = NO;
    [tempImage.topAnchor constraintEqualToAnchor:picker.topAnchor constant:20].active = YES;
    [tempImage.widthAnchor constraintEqualToAnchor:tempImage.heightAnchor].active = YES;
    [tempImage.bottomAnchor constraintEqualToAnchor:picker.bottomAnchor constant:-100].active = YES;
    [tempImage.heightAnchor constraintEqualToAnchor:tempImage.widthAnchor multiplier:1.0].active = YES;
    [tempImage.leadingAnchor constraintEqualToAnchor:picker.leadingAnchor constant:100].active = YES;
    [tempImage.trailingAnchor constraintEqualToAnchor:picker.trailingAnchor constant:-100].active = YES;
    
    
}


@end
