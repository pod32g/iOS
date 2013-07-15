//
//  LoginViewController.m
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 20/10/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import "LoginViewController.h"
#import "ImagesViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize navBar, tool;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    UIImage* navBarImage=[UIImage imageNamed:@"navBar5.png"];
    UIImage* image = [[UIImage imageNamed:@"toolBarStrech.png"] stretchableImageWithLeftCapWidth:10.0 topCapHeight:0.0];
    [navBar setBackgroundImage:navBarImage forBarMetrics:UIBarMetricsDefault];
    [tool setBackgroundImage:image forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
   
    [super viewDidUnload];
}
- (IBAction)enter:(id)sender {
    if ([text2.text isEqualToString:@"12345"]) {
        ImagesViewController *camera = [[ImagesViewController alloc]
                                        initWithNibName:@"ImagesViewController"
                                        bundle:nil];
        [self presentViewController:camera
                           animated:YES
                         completion:nil];

    }
    else{
        UIAlertView  *alert1 = [[UIAlertView alloc] initWithTitle:@"Error"
                                                          message:@"Wrong Password"
                                                         delegate:nil
                                                cancelButtonTitle:@"Dissmiss"
                                                otherButtonTitles:nil];
        [alert1 show];

    }
}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
