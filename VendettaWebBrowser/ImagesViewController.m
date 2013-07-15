//
//  ImagesViewController.m
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 19/10/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import "ImagesViewController.h"

@interface ImagesViewController ()

@end

@implementation ImagesViewController

@synthesize webView;
@synthesize navBar, tool;


-(IBAction)image1:(id)sender{
    [webView setAlpha:1.0];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [webView loadRequest:request];
}
-(IBAction)image2:(id)sender{
    [webView setAlpha:1.0];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"2" ofType:@"jpg"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [webView loadRequest:request];
}
-(IBAction)image3:(id)sender{
    [webView setAlpha:1.0];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"3" ofType:@"JPG"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [webView loadRequest:request];
}
-(IBAction)image4:(id)sender{
    [webView setAlpha:1.0];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"4" ofType:@"jpg"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [webView loadRequest:request];
}
-(IBAction)hideimages:(id)sender{
    [webView setAlpha:0.0];
}
-(IBAction)done:(id)sender{
    [self dismissViewControllerAnimated:YES
                             completion:nil];
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
    [navBar setBackgroundImage:navBarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault ];
    [tool setBackgroundImage:image forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    

    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
