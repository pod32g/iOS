//
//  BookmarksViewController.h
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 10/10/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface BookmarksViewController : UIViewController{
    NSMutableArray *bookmark;
    
    ViewController *explorerView;
    UINavigationBar *navBar;
    UIToolbar *tool;
    
    
}



@property (nonatomic, retain) NSMutableArray *bookmark;

@property (nonatomic, retain) ViewController *explorerView;
@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;
@property (nonatomic, retain) IBOutlet UIToolbar *tool;



-(IBAction)cancelButtonTapped;





@end
