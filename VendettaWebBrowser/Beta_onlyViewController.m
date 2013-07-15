//
//  Beta_onlyViewController.m
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 30/09/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import "Beta_onlyViewController.h"
#import "ImagesViewController.h"
#import "LoginViewController.h"


@interface Beta_onlyViewController ()

@end

@implementation Beta_onlyViewController
@synthesize navBar, tool;


-(IBAction)login:(id)sender{
     LoginViewController*camera = [[LoginViewController alloc]
                                    initWithNibName:@"LoginViewController"
                                    bundle:nil];
    [self presentViewController:camera
                       animated:YES
                     completion:nil];
 
        
}


-(IBAction)done:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
    
    
}
-(IBAction)b1:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    [b1 setAlpha:0.0];
    [b2 setAlpha:0.0];
    [b3 setAlpha:0.0];
    [b4 setAlpha:0.0];
    [v1 setAlpha:1.0];
    [done setAlpha:0.4];
    [UIView commitAnimations];
}
-(IBAction)b2:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    [b1 setAlpha:0.0];
    [b2 setAlpha:0.0];
    [b3 setAlpha:0.0];
    [b4 setAlpha:0.0];
    [v2 setAlpha:1.0];
    [done setAlpha:0.4];
    [UIView commitAnimations];
    }
-(IBAction)b3:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    [b1 setAlpha:0.0];
    [b2 setAlpha:0.0];
    [b3 setAlpha:0.0];
    [b4 setAlpha:0.0];
    [v3 setAlpha:1.0];
    [done setAlpha:0.4];
    [UIView commitAnimations];
}
-(IBAction)b4:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    [b1 setAlpha:0.0];
    [b2 setAlpha:0.0];
    [b3 setAlpha:0.0];
    [b4 setAlpha:0.0];
    [v4 setAlpha:1.0];
    [done setAlpha:0.4];
    [UIView commitAnimations];
}
-(IBAction)donem:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    [b1 setAlpha:1.0];
    [b2 setAlpha:1.0];
    [b3 setAlpha:1.0];
    [b4 setAlpha:1.0];
    [v1 setAlpha:0.0];
    [v2 setAlpha:0.0];
    [v3 setAlpha:0.0];
    [v4 setAlpha:0.0];
    [done setAlpha:0.0];
    [UIView commitAnimations];
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
