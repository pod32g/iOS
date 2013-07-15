//
//  SettingsTableViewController.m
//  OnionBrowser
//
//  Created by Mike Tigas on 5/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SettingsTableViewController.h"
#import "AppDelegate.h"


@interface SettingsTableViewController ()

@end

@implementation SettingsTableViewController
@synthesize explorerview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return  (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        // Cookies
        return 3;
    } else if (section == 1) {
        // UA Spoofing
        return 3;
    } else if (section == 2) {
        // Pipelining
        return 2;
    } else if (section == 3) {
        // DNT header
        return 2;
    
    }
    else if (section == 4){
        return 2;
    }
    return 0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section == 0)
        return @"Cookies\n(Changing Will Clear Cookies)";
    else if (section == 1)
        return @"User-Agent Spoofing\n* iOS Safari provides better mobile website compatibility\n*Currently Only Safary Available.";
    else if (section == 2)
        return @"HTTP Pipelining\n(Disable if you have issues with images on some websites)";
    else if (section == 3)
        return @"DNT (Do Not Track) Header";
    else if (section == 4)
        return @"Panic";
    else
        return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithFrame:CGRectZero];
    }
    
    if(indexPath.section == 0) {
        // Cookies
        NSHTTPCookie *cookie;
        NSHTTPCookieStorage *storage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
        for (cookie in [storage cookies]) {
            [storage deleteCookie:cookie];
        }

        NSHTTPCookieAcceptPolicy currentCookieStatus = [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookieAcceptPolicy];
        NSUInteger cookieStatusSection = 0;
        if (currentCookieStatus == NSHTTPCookieAcceptPolicyAlways) {
            cookieStatusSection = 0;
        } else if (currentCookieStatus == NSHTTPCookieAcceptPolicyOnlyFromMainDocumentDomain) {
            cookieStatusSection = 1;
        } else {
            cookieStatusSection = 2;
        }

        if (indexPath.row == cookieStatusSection) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        } else {
            cell.accessoryType = UITableViewCellAccessoryNone;
        }
        
        if (indexPath.row == 0) {
            cell.textLabel.text = @"Allow All";
        } else if (indexPath.row == 1) {
            cell.textLabel.text = @"Block Third-Party";
        } else if (indexPath.row == 2) {
            cell.textLabel.text = @"Block All";
        }
    } else if (indexPath.section == 1) {
        // User-Agent
        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        if (indexPath.row == 0) {
            cell.textLabel.text = @"No Spoofing: iOS Safari";
            if (appDelegate.spoofUserAgent == UA_SPOOF_NO) {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            } else {
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
        } else if (indexPath.row == 1) {
            cell.textLabel.text = @"Windows 7 (NT 6.1), Firefox 10";
            if (appDelegate.spoofUserAgent == UA_SPOOF_WIN7_TORBROWSER) {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            } else {
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
        } else if (indexPath.row == 2) {
            cell.textLabel.text = @"Mac OS X 10.8.1, Safari 6.0";
            if (appDelegate.spoofUserAgent == UA_SPOOF_SAFARI_MAC) {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            } else {
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
        }
    } else if (indexPath.section == 2) {
        // Pipelining
        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        
        if (indexPath.row == 0) {
            cell.textLabel.text = @"Enabled (Better Performance)";
            if (appDelegate.usePipelining == YES) {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            } else {
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
        } else if (indexPath.row == 1) {
            cell.textLabel.text = @"Disabled (Better Compatibility)";
            if (appDelegate.usePipelining == NO) {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            } else {
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
        }
    } else if (indexPath.section == 3) {
        // DNT
        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        
        if (indexPath.row == 0) {
            cell.textLabel.text = @"No Header";
            if (appDelegate.dntHeader == DNT_HEADER_UNSET) {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            } else {
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
        } else if (indexPath.row == 1) {
            cell.textLabel.text = @"Opt Out Of Tracking";
            if (appDelegate.dntHeader == DNT_HEADER_NOTRACK) {
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
            } else {
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
        }

                              }
    else if (indexPath.section == 4){
        if (indexPath.row == 0) {
            cell.textLabel.text = @"Panic Button Enabled";
            if (explorerview.panic.alpha == 1.0) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }
        else{
            cell.accessoryType = UITableViewCellAccessoryNone;
        }}
        if (indexPath.row == 1) {
            cell.textLabel.text = @"Panic Button Disabled";
            if (explorerview.panic.alpha == 0.0) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            }
            else{
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
                
        }
    }
    
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0) {
        // Cookies
        if (indexPath.row == 0) {
            [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookieAcceptPolicy:NSHTTPCookieAcceptPolicyAlways];
        } else if (indexPath.row == 1) {
            [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookieAcceptPolicy:NSHTTPCookieAcceptPolicyOnlyFromMainDocumentDomain];
        } else if (indexPath.row == 2) {
            [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookieAcceptPolicy:NSHTTPCookieAcceptPolicyNever];
        }
    } else if (indexPath.section == 1) {
        // User-Agent
        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        if (indexPath.row == 0) {
            appDelegate.spoofUserAgent = UA_SPOOF_NO;
        } else {
            if (indexPath.row == 1) {
                appDelegate.spoofUserAgent = UA_SPOOF_WIN7_TORBROWSER;
            } else if (indexPath.row == 2) {
                appDelegate.spoofUserAgent = UA_SPOOF_SAFARI_MAC;
            }
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil 
                                                            message:[NSString stringWithFormat:@"User Agent spoofing enabled.\n\nNote that JavaScript cannot be disabled due to framework limitations. Scripts and other iOS features may still identify your browser.\n\nSome mobile or tablet websites may not work properly without the original mobile User Agent."]
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK" 
                                                  otherButtonTitles:nil];
            [alert show];
        }
    } else if (indexPath.section == 2) {
        // Pipelining
        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        if (indexPath.row == 0) {
            appDelegate.usePipelining = YES;
        } else if (indexPath.row == 1) {
            appDelegate.usePipelining = NO;
        }
    } else if (indexPath.section == 3) {
        // DNT
        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        if (indexPath.row == 0) {
            appDelegate.dntHeader = DNT_HEADER_UNSET;
        } else if (indexPath.row == 1) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil 
                                                            message:[NSString stringWithFormat:@"Vendetta Web Browser will now send the 'DNT: 1' header. Note that because only very new browsers send this optional header, this opt-in feature may allow websites to uniquely identify you."]
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK" 
                                                  otherButtonTitles:nil];
            [alert show];
            appDelegate.dntHeader = DNT_HEADER_NOTRACK;
        }
    }
    if (indexPath.section == 4) {
        if (indexPath.row == 0) {
            [explorerview.panic setAlpha:1.0];
        }
        else if (indexPath.row == 1){
            [explorerview.panic setAlpha:0.0];
        }
    }
    [tableView reloadData];
}

@end
