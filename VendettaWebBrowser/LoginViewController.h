//
//  LoginViewController.h
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 20/10/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController{
  
    IBOutlet UITextField *text1;
    
    IBOutlet UITextField *text2;
    UINavigationBar *navBar;
    UIToolbar *tool;
}
- (IBAction)enter:(id)sender;
- (IBAction)back:(id)sender;
@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;
@property (nonatomic, retain) IBOutlet UIToolbar *tool;

@end
