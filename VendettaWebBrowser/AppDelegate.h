//
//  AppDelegate.h
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 22/09/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

#define DNT_HEADER_UNSET 0
#define DNT_HEADER_CANTRACK 1
#define DNT_HEADER_NOTRACK 2

#define UA_SPOOF_NO 0
#define UA_SPOOF_WIN7_TORBROWSER 1
#define UA_SPOOF_SAFARI_MAC 2

@interface AppDelegate : UIResponder <UIApplicationDelegate>



@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic) ViewController *appWebView;



@property (nonatomic) Byte spoofUserAgent;
@property (nonatomic) Byte dntHeader;
@property (nonatomic) Boolean usePipelining;

@property (nonatomic) NSMutableArray *sslWhitelistedDomains; // for self-signed

@property (nonatomic) Boolean doPrepopulateBookmarks;


- (NSURL *)applicationDocumentsDirectory;

@end
