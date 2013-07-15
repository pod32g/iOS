//
//  LicenseViewController.m
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 15/10/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import "LicenseViewController.h"

@interface LicenseViewController ()

@end

@implementation LicenseViewController
@synthesize navBar, tool;



-(IBAction)done:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
    
    
}
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
