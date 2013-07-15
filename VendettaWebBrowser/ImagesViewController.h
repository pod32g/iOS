//
//  ImagesViewController.h
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 19/10/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImagesViewController : UIViewController{
    

    UIWebView *webView;
    UIToolbar *navBar;
    UIToolbar *tool;

    
}

-(IBAction)done:(id)sender;
@property (nonatomic,retain) IBOutlet UIWebView *webView;
-(IBAction)image1:(id)sender;
-(IBAction)image2:(id)sender;
-(IBAction)image3:(id)sender;
-(IBAction)image4:(id)sender;
-(IBAction)hideimages:(id)sender;
@property (nonatomic, retain) IBOutlet UIToolbar *navBar;
@property (nonatomic, retain) IBOutlet UIToolbar *tool;
 
@end

