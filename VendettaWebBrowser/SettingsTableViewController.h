//
//  SettingsTableViewController.h
//  OnionBrowser
//
//  Created by Mike Tigas on 5/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface SettingsTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>{
    ViewController *explorerview;
}
@property (nonatomic, retain) ViewController *explorerview;
@end
