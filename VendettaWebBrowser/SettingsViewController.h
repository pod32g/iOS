//
//  SettingsViewController.h
//  OnionBrowser
//
//  Created by Mike Tigas on 5/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingsTableViewController.h"
#import "ViewController.h"

@interface SettingsViewController : UIViewController{
    ViewController *explorerview;
}

@property (nonatomic) IBOutlet UINavigationBar *navBar;
@property (nonatomic) IBOutlet SettingsTableViewController *tableVC;
@property (nonatomic, retain) ViewController *explorerview;

- (IBAction)doneButton:(id)sender;
@end
