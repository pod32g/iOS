//
//  Beta_onlyViewController.h
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 30/09/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Beta_onlyViewController : UIViewController{
    
    IBOutlet UIButton *b1;
    IBOutlet UIButton *b2;
    IBOutlet UIButton *b3;
    IBOutlet UIButton *b4;
    IBOutlet UIView *v1;
    IBOutlet UIView *v2;
    IBOutlet UIView *v3;
    IBOutlet UIView *v4;
    IBOutlet UIButton *done;
    UINavigationBar *navBar;
    UIToolbar *tool;
}
-(IBAction)b1:(id)sender;
-(IBAction)b2:(id)sender;
-(IBAction)b3:(id)sender;
-(IBAction)b4:(id)sender;
-(IBAction)done:(id)sender;
@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;
@property (nonatomic, retain) IBOutlet UIToolbar *tool;


@end
