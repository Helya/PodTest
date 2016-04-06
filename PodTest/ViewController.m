//
//  ViewController.m
//  PodTest
//
//  Created by 余敏侠 on 16/4/5.
//  Copyright © 2016年 secrui Co.,Ltd. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];

    hud.mode = MBProgressHUDModeCustomView;

    UIImage *image = [[UIImage imageNamed:@"Checkmark"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    hud.customView = [[UIImageView alloc] initWithImage:image];
    // Looks a bit nicer if we make it square.
    hud.square = YES;
    // Optional label text.
//    hud.label.text = NSLocalizedString(@"Done", @"HUD done title");
    hud.labelText = NSLocalizedString(@"Done", @"HUD done title");
//    [hud hideAnimated:YES afterDelay:3.f];
    [hud hide:YES afterDelay:3.0f];
    // Set the label text.
//    hud.label.text = NSLocalizedString(@"Loading...", @"HUD loading title");
    // You can also adjust other label properties if needed.
    // hud.label.font = [UIFont italicSystemFontOfSize:16.f];

    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
//            [hud hide:YES];
        });
    });

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
