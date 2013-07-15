//
//  HistoryViewController.h
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 23/09/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@interface HistoryViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    
    NSMutableArray *history;
    
    ViewController *explorerView;
    UINavigationBar *navBar;
    UIToolbar *tool;
    
    
}



@property (nonatomic, retain) NSMutableArray *history;

@property (nonatomic, retain) ViewController *explorerView;
-(IBAction)done:(id)sender;
@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;
@property (nonatomic, retain) IBOutlet UIToolbar *tool;







@end
