//
//  ViewController.h
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 01/09/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BookmarksViewController;
@class HistoryViewController;
@class SettingsViewController;
@class BookmarkViewController;
@interface ViewController : UIViewController <UIActionSheetDelegate, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate, UIAlertViewDelegate>

{
    
    
    
    int count;
	int count2;
    int count3;
    IBOutlet UIWebView *webpage;
    IBOutlet UITextField *urlbar;
    IBOutlet UITextField *googlebar;
    IBOutlet UIActivityIndicatorView *activityind;
    NSTimer *timer;
    NSString *_webURL;
    IBOutlet UIToolbar* topBar;
    IBOutlet UIToolbar* controls;
    IBOutlet UIToolbar *themesbar;
    IBOutlet UIButton* fullBack;
    IBOutlet UIButton* fullFor;
    IBOutlet UIButton* fullRef;
    IBOutlet UIButton* fullCan;
    IBOutlet UIImageView *screen;
    IBOutlet UIImageView *screen2;
    IBOutlet UIWebView *webView;
    IBOutlet UIButton *tab1;
    IBOutlet UIButton *tab2;
    IBOutlet UIButton *close;
    IBOutlet UIWebView *webpage2;
    IBOutlet UIBarButtonItem *back;
    IBOutlet UIBarButtonItem *forw;
    IBOutlet UIBarButtonItem *reload;
    IBOutlet UIBarButtonItem *stop;
    IBOutlet UIButton *dismiss;
    UITextField* mAddressField;
    UIButton *bookmarkButton;
    UITextField *urlbar1;
    NSMutableArray *bookmarks;
    NSMutableArray *history;
    IBOutlet UITextField *fullurltext;
    ViewController *explorerView;
    IBOutlet UIButton *fullurlbutton;
    ViewController *main;
    BookmarksViewController *bookmark;
    SettingsViewController *settings;
    IBOutlet UIButton * full1;
    IBOutlet UIButton * full2;
    IBOutlet UIButton *exit2;
    IBOutlet UIButton *theme1;
    IBOutlet UIButton *theme2;
    IBOutlet UIButton *theme3;
    IBOutlet UIButton *restore;
    IBOutlet UIButton *ok;
    IBOutlet UIView *frame;
    IBOutlet UIView *frame2;
    IBOutlet UIView *frame3;
    IBOutlet UINavigationBar *test;
    IBOutlet UISwitch *blocked;  
     UIButton *panic;
    
    
    
}

-(void)ONorOFF;
-(IBAction)panic:(id)sender;
-(IBAction)blocked:(id)sender;
-(IBAction)theme1:(id)sender;
-(IBAction)theme2:(id)sender;
-(IBAction)theme3:(id)sender;
-(IBAction)restore:(id)sender;
-(IBAction)bookmarksButtonTapped;

-(IBAction)url:(id)sender;
-(IBAction)google:(id)sender;
-(IBAction)refresh:(id)sender;
-(IBAction)open:(id)sender;
-(IBAction)dismiss:(id)sender;
-(IBAction)fullBack;
-(IBAction)fullForward;
-(IBAction)fullRefresh;
-(IBAction)fullCancel;
-(IBAction)fullurl:(id)sender;

-(IBAction)tab1:(id)sender;
-(IBAction)tab2:(id)sender;

-(IBAction)atras;
-(IBAction)adelante;
-(IBAction)recargar;
-(IBAction)detener;
@property (nonatomic, retain)  IBOutlet UIActivityIndicatorView *activityind;
@property (nonatomic, strong) UITextField* addressField;
- (void)informError:(NSError*)error;
@property (nonatomic, strong) IBOutlet UIWebView *webpage;
@property (nonatomic, strong) IBOutlet UIWebView *webpage2;
@property (nonatomic, strong) HistoryViewController *historie;
@property (nonatomic, retain) BookmarksViewController *bookmark;
@property (nonatomic, retain) UIPopoverController *bookmarkPopoverController;
@property (nonatomic, retain) UIPopoverController *addBookmarkPopoverController;
@property (nonatomic, strong) IBOutlet UITextField *urlbar;
@property (nonatomic, retain) IBOutlet UIButton *panic;
@property (nonatomic, strong) NSMutableArray *textFieldShouldReturn;
@property (nonatomic, retain) UIActionSheet *actionActionSheet;
@property (nonatomic, strong) SettingsViewController * set;
@property (nonatomic) NSString *currentURL;
@property (nonatomic, retain)IBOutlet UIButton *Menu;
+ (UIWebView*)webViewWithUserAgent:(NSString*)userAgent;
@property (nonatomic, retain, setter=loadURL:) NSURL *url;
@property (getter = isModal) BOOL modal;
-(IBAction)portraitfull:(id)sender;
-(IBAction)landscapefull:(id)sender;
-(IBAction)exit2:(id)sender;
-(IBAction)ok:(id)sender;
+ (void)resetUserAgent;
- (IBAction)Harlem:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *harlem;







@end