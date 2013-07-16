//
//  ViewController.m
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 01/09/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>
#import "BookmarksViewController.h"
#import "HistoryViewController.h"
#import "SettingsViewController.h"
#import "VLMHarlemShake.h"

@interface ViewController ()
- (void)addBookmark;

@property (strong, nonatomic) VLMHarlemShake *harlemShake;

@end

@implementation ViewController
@synthesize webpage, webpage2;
@synthesize urlbar;
@synthesize bookmarkPopoverController = _bookmarkPopoverController;
@synthesize addBookmarkPopoverController = _addBookmarkPopoverController;
@synthesize actionActionSheet = _actionActionSheet;
@synthesize modal = _modal;
@synthesize bookmark;
@synthesize historie, set;
@synthesize panic;
@synthesize activityind;
@synthesize addressField;
@synthesize Menu,harlem;




 
-(void)ONorOFF{
    
    if (blocked.on) {
        if (urlbar.text == @"http://www.taringa.net") {
            [webpage stopLoading];
        }
        else {
            
        }
    }
}

-(IBAction)bookmarksButtonTapped  {
    
    BookmarksViewController *tempView = [[BookmarksViewController alloc] initWithNibName:@"BookmarksViewController" bundle:nil ];
    
    tempView.explorerView = self;
    
    [self presentModalViewController:tempView animated:true];
    
    
    
}

-(IBAction)panic:(id)sender{
    exit(0);
}


    


/*
 -(IBAction)urlbutton:(id)sender{
 if (fullurltext.alpha!=1.0) {
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 [fullurltext setAlpha:1];
 
 [UIView commitAnimations];
 }
 else {
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationDuration:0.5];
 [fullurltext setAlpha:0];
 
 [UIView commitAnimations];
 [UIView commitAnimations];
 
 }}
 
 */



-(IBAction)fullurl:(id)sender{
    if (urlbar.alpha!=0.0) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        
        [topBar setAlpha:1.0];
        [dismiss setAlpha:1.0];
        [fullurlbutton setAlpha:0.0];
        if (webpage.alpha==1.0) {
            webpage.frame=CGRectMake(0,44, 320, 480);
        }
        if (webpage2.alpha==1.0) {
            webpage2.frame=CGRectMake(0,44, 320, 480);
        }
        
        [UIView commitAnimations];
        
        
        
    }
}
-(IBAction)dismiss:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    
        [dismiss setAlpha:0.0];
    [topBar setAlpha:0.0];
    [fullurlbutton setAlpha:0.6];
    if (webpage.alpha==1.0) {
        webpage.frame=CGRectMake(0, 0, 320, 480);
    }
    if (webpage2.alpha==1.0) {
        webpage2.frame=CGRectMake(0, 0, 320, 480);
    }
    [UIView commitAnimations];
    
}
-(IBAction)opentabs:(id)sender{
    
    if (tab1.alpha!=1.0) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        [tab1 setAlpha:1];
        [tab2 setAlpha:1];
        [frame setAlpha:1];
		[frame2 setAlpha:1];
		[frame3 setAlpha:1];
        [screen setAlpha:1];
        [screen2 setAlpha:1];
        [UIView commitAnimations];
	}
	else {
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:0.5];
		[tab1 setAlpha:0];
		[tab2 setAlpha:0];
        [frame setAlpha:0];
		[frame2 setAlpha:0];
		[screen setAlpha:0];
		[screen2 setAlpha:0];
		[UIView commitAnimations];
        [UIView commitAnimations];
		
	}
    
}
-(IBAction)tab1:(id)sender{
  
        
        
        webpage2.alpha=0.0;
        
        webpage.alpha=1.0;
        urlbar.text=webpage.request.URL.absoluteString;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        [tab1 setAlpha:0.0];
        [tab2 setAlpha:0.0];
        [screen setAlpha:0];
        [screen2 setAlpha:0];
        [frame setAlpha:0];
        [frame2 setAlpha:0];
        [UIView commitAnimations];
    

}
-(IBAction)tab2:(id)sender{
    
    
        
        
        if (count<1) {
            [webpage2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[[NSUserDefaults standardUserDefaults] objectForKey:@"fieldKey2"]]]];
            
            webpage.alpha=0.0;
            
            webpage2.alpha=1.0;
            urlbar.text=webpage2.request.URL.absoluteString;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:0.5];
            [tab2 setAlpha:0.0];
            [tab1 setAlpha:0.0];
            [frame setAlpha:0];
            [frame2 setAlpha:0];
            [screen setAlpha:0];
            [screen2 setAlpha:0];
            [UIView commitAnimations];
            count=+1;
        }
        else {
            webpage.alpha=0.0;
            
            webpage2.alpha=1.0;
            urlbar.text=webpage2.request.URL.absoluteString;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:0.5];
            [tab1 setAlpha:0.0];
            [tab2 setAlpha:0.0];
            [frame setAlpha:0];
            [frame2 setAlpha:0];
            [screen setAlpha:0];
            [screen2 setAlpha:0];
            [UIView commitAnimations];
            
            
            
        }
    
   

        
        
    }
    
+ (UIWebView *)webViewWithUserAgent:(NSString *)userAgent {
    NSDictionary *new = [NSDictionary dictionaryWithObject:userAgent forKey:@"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.163 Safari/535.19"];
    [[NSUserDefaults standardUserDefaults] registerDefaults:new];
    
}




- (void)webViewDidFinishLoad:(UIWebView *)webView {
      

    NSMutableArray *history = [[[NSUserDefaults standardUserDefaults] arrayForKey:@"History"] mutableCopy];
    
    if (!history) {
        
        history = [[NSMutableArray alloc] init];
        
    }
    
    [history addObject:[[[[self webpage]request] URL] absoluteString]];
    
    [[NSUserDefaults standardUserDefaults] setObject:history forKey:@"History"];
    

        
        
        if (webpage.alpha == 1.0) {
            NSMutableArray *history = [[[NSUserDefaults standardUserDefaults] arrayForKey:@"History"] mutableCopy];
            
          

            
            
            urlbar.text = webpage.request.URL.absoluteString;
            NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
            [defaults setObject:[urlbar text] forKey:@"fieldKey"];
            [defaults synchronize];
        }
        if (webpage2.alpha == 1.0) {
           

            urlbar.text = webpage2.request.URL.absoluteString;
            NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
            [defaults setObject:[urlbar text] forKey:@"fieldKey2"];
            [defaults synchronize];
        }
        if (fullurltext.alpha == 1.0) {
            if (webpage.alpha == 1.0) {
                
                
                
                fullurltext.text = webpage.request.URL.absoluteString;
                NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
                [defaults setObject:[fullurltext text] forKey:@"fieldKey"];
                [defaults synchronize];
            }
            if (webpage2.alpha == 1.0) {
                fullurltext.text = webpage2.request.URL.absoluteString;
                NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
                [defaults setObject:[fullurltext text] forKey:@"fieldKey2"];
                [defaults synchronize];
            }
        }
        
    }


 - (void)webView:(UIWebView *)webpage didFailLoadWithError:(NSError *)error {
     switch ([error code]) {
         case kCFURLErrorCancelled:
            //none
             break;
             
         default:
         {
             UIAlertView *Error = [[UIAlertView alloc]
                      initWithTitle:@"Error" message: [error localizedDescription]
                      delegate:self cancelButtonTitle:@"Dissmiss"
                      otherButtonTitles:nil];
             Error.alertViewStyle = UIAlertViewStyleDefault;
             [Error show];
             break;
     }

 }

 }


-(IBAction)open:(id)sender{
    
    UIActionSheet *actionsheet = [[UIActionSheet alloc] initWithTitle:@"Options" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Take Screenshot",@"Tweet",@"Add Bookmarks",@"Save Current File",@"Settings",@"Extras", nil];
    [actionsheet showInView:self.view];
    
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    
    
    
    
    
    if (buttonIndex == 0) {
        if (webpage.alpha == 1.0) {
            
            
            UIGraphicsBeginImageContext(webpage.frame.size);
            [self->webpage.layer renderInContext:UIGraphicsGetCurrentContext()];
            UIImage *viewImage =UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            UIImageWriteToSavedPhotosAlbum(viewImage, nil,nil,nil);
        }
        if (webpage2.alpha == 1.0) {
            
            UIGraphicsBeginImageContext(webpage2.frame.size);
            [self->webpage2.layer renderInContext:UIGraphicsGetCurrentContext()];
            UIImage *viewImage =UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            UIImageWriteToSavedPhotosAlbum(viewImage, nil,nil,nil);
        }
        
        
        
    }
    
    if (buttonIndex == 4) {
        SettingsViewController *settingsController = [[SettingsViewController alloc] initWithNibName:@"SettingsViewController" bundle:nil];
        [self presentModalViewController:settingsController animated:YES];
    }
    

    if (buttonIndex == 2) {
        UIAlertView *Error;
        Error = [[UIAlertView alloc]
                 initWithTitle:@"Error" message:@"Under Construction"
                 delegate:self cancelButtonTitle:@"OK"
                 otherButtonTitles:nil];
        Error.alertViewStyle = UIAlertViewStyleDefault;
        [Error show];

    
 
    }
    if (buttonIndex == 5) {
        UIAlertView *About;
        About = [[UIAlertView alloc]
                       initWithTitle:@"Extras" message:@""
                       delegate:self cancelButtonTitle:@"OK"
                       otherButtonTitles:@"Visit Developer`s Site", @"Themes", @"Enable Panic Button",@"Enable Harlem Shake Button", nil];
                   About.alertViewStyle = UIAlertViewStyleDefault;
               [About show];
    }
    
    
    
    if (buttonIndex == 3) {
        
        
        if (webpage.alpha == 1.0) {
            
            
            
            // Get the URL of the loaded ressource
            NSURL *theRessourcesURL = [[webpage request] URL];
            NSString *fileExtension = [theRessourcesURL pathExtension];
            
            if ([fileExtension isEqualToString:@"png"] || [fileExtension isEqualToString:@"jpg"] || [fileExtension isEqualToString:@"pdf"]) {
                // Get the filename of the loaded ressource form the UIWebView's request URL
                NSString *filename = [theRessourcesURL lastPathComponent];
                NSLog(@"Filename: %@", filename);
                // Get the path to the App's Documents directory
                NSString *docPath = [self documentsDirectoryPath];
                // Combine the filename and the path to the documents dir into the full path
                NSString *pathToDownloadTo = [NSString stringWithFormat:@"%@/%@", docPath, filename];
                
                
                // Load the file from the remote server
                NSData *tmp = [NSData dataWithContentsOfURL:theRessourcesURL];
                // Save the loaded data if loaded successfully
                if (tmp != nil) {
                    NSError *error = nil;
                    // Write the contents of our tmp object into a file
                    [tmp writeToFile:pathToDownloadTo options:NSDataWritingAtomic error:&error];
                    if (error != nil) {
                        NSLog(@"Failed to save the file: %@", [error description]);
                    } else {
                        // Display an UIAlertView that shows the users we saved the file :)
                        UIAlertView *filenameAlert = [[UIAlertView alloc] initWithTitle:@"File saved" message:[NSString stringWithFormat:@"The file %@ has been saved.", filename] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                        [filenameAlert show];
                        
                    }
                } else {
                    // File could notbe loaded -> handle errors
                }
            } else {
                // File type not supported
            }
        }
        else if (webpage2.alpha ==1.0){
            // Get the URL of the loaded ressource
            NSURL *theRessourcesURL = [[webpage2 request] URL];
            NSString *fileExtension = [theRessourcesURL pathExtension];
            
            if ([fileExtension isEqualToString:@"png"] || [fileExtension isEqualToString:@"jpg"] || [fileExtension isEqualToString:@"pdf"]) {
                // Get the filename of the loaded ressource form the UIWebView's request URL
                NSString *filename = [theRessourcesURL lastPathComponent];
                NSLog(@"Filename: %@", filename);
                // Get the path to the App's Documents directory
                NSString *docPath = [self documentsDirectoryPath];
                // Combine the filename and the path to the documents dir into the full path
                NSString *pathToDownloadTo = [NSString stringWithFormat:@"%@/%@", docPath, filename];
                
                
                // Load the file from the remote server
                NSData *tmp = [NSData dataWithContentsOfURL:theRessourcesURL];
                // Save the loaded data if loaded successfully
                if (tmp != nil) {
                    NSError *error = nil;
                    // Write the contents of our tmp object into a file
                    [tmp writeToFile:pathToDownloadTo options:NSDataWritingAtomic error:&error];
                    if (error != nil) {
                        NSLog(@"Failed to save the file: %@", [error description]);
                    } else {
                        // Display an UIAlertView that shows the users we saved the file :)
                        UIAlertView *filenameAlert = [[UIAlertView alloc] initWithTitle:@"File saved" message:[NSString stringWithFormat:@"The file %@ has been saved.", filename] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                        [filenameAlert show];
                        
                    }
                } else {
                    // File could notbe loaded -> handle errors
                }
            } else {
                // File type not supported
            }
        }
        
    }
    
    
    
    
        
    
    if (buttonIndex == 1) {
        TWTweetComposeViewController *twitter = [[TWTweetComposeViewController alloc] init];
        
        [twitter setInitialText:urlbar.text];
        [twitter addImage:[UIImage imageNamed:@"Real_-Logo.png"]];
        
        [self presentViewController:twitter animated:YES completion:nil];
        
        twitter.completionHandler = ^(TWTweetComposeViewControllerResult res) {
            
            if(res == TWTweetComposeViewControllerResultDone) {
                
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Success" message:@"The Tweet was posted successfully." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
                
                [alert show];
                
            }
            if(res == TWTweetComposeViewControllerResultCancelled) {
                
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Cancelled" message:@"You Cancelled posting the Tweet." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
                
                [alert show];
                
            }
            [self dismissModalViewControllerAnimated:YES];
            
        };
        
    }
#warning Trabajar en esta funcion debo
#pragma mark - Facebook no trabaja en iOS 5, necesito encontrar la manera de hacer que no colapse la app entera
    /*
    if (buttonIndex == 2) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Currently working on this function" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
        
        SLComposeViewController *facebook =
        [SLComposeViewController
         composeViewControllerForServiceType:SLServiceTypeFacebook];
        [facebook setInitialText:@""];
        [facebook addImage:[UIImage imageNamed:@"Real_-Logo.png"]];
        [self presentViewController:facebook animated:YES completion:nil];
        facebook.completionHandler =^(SLComposeViewControllerResult res){
            if (res == SLComposeViewControllerResultDone) {
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Success" message:@"The content was posted successfully." delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
                [alert show];
                
            }
            if (res == SLComposeViewControllerResultCancelled) {
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Cancelled" message:@"You Cancelled the post" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
                [alert show];
            }
            [self dismissModalViewControllerAnimated:YES];
        };*/
    }

-(void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)Index{
    NSLog([NSString stringWithFormat:@"%d"]);
    
    if (Index == 1) {
        if (webpage.alpha == 1.0) {
            
            
            [webpage loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.pod32g.blogspot.com"]]];
        }
        if (webpage2.alpha == 1.0) {
            [webpage2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.pod32g.blogspot.com"]]];
            
            
        }
    }
    if (Index == 2) {
        [UIView beginAnimations: @"moveField"context: nil];
        [UIView setAnimationDelegate: self];
        [UIView setAnimationDuration: 0.5];
        [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
        [theme1 setAlpha:1.0];
        [theme2 setAlpha:1.0];
        [theme3 setAlpha:1.0];
        [restore setAlpha:1.0];
        [ok setAlpha:1.0];
        [UIView commitAnimations];
    }
    if (Index == 3) {
        [panic setAlpha:1.0];
    }
    if (Index == 4) {
        [harlem setAlpha:1.0];
    }
}
-(IBAction)portraitfull:(id)sender{
    [UIView beginAnimations: @"moveField"context: nil];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDuration: 0.5];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    
    [topBar setAlpha:0.0];
    [controls setAlpha:0.0];
    
    [fullBack setAlpha:0.6];
    [fullFor setAlpha:0.6];
    [fullRef setAlpha:0.6];
    [fullCan setAlpha:0.6];
    [full1 setAlpha:0.0];
    [fullurlbutton setAlpha:0.6];
    
    
    [fullurlbutton setAlpha:0.6];
    if (webpage.alpha==1.0) {
        webpage.frame=CGRectMake(0, 0, 320, 485);
    }
    if (webpage2.alpha==1.0) {
        webpage2.frame=CGRectMake(0, 0, 320, 485);
    }
    [UIView commitAnimations];

}

-(IBAction)landscapefull:(id)sender{
    [UIView beginAnimations: @"moveField"context: nil];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDuration: 0.5];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [topBar setAlpha:0.0];
    [controls setAlpha:0.0];
    [full2 setAlpha:0.0];
    [exit2 setAlpha:0.6];
    if (webpage.alpha == 1.0) {
        webpage.frame=CGRectMake(0, 0, 480, 320);
    }
    else if (webpage2.alpha == 1.0){
        webpage2.frame=CGRectMake(0, 0, 480, 320);
    }
    [UIView commitAnimations];
    
}
-(IBAction)exit2:(id)sender{
    [UIView beginAnimations: @"moveField"context: nil];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDuration: 0.5];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [topBar setAlpha:1.0];
    [controls setAlpha:1.0];
    [full2 setAlpha:0.6];
    [exit2 setAlpha:0.0];
    if (webpage.alpha==1.0) {
        webpage.frame=CGRectMake(0,20, 480, 300);
    }
    if (webpage2.alpha==1.0) {
        webpage2.frame=CGRectMake(0,20, 480, 300);
    }
    
    [UIView commitAnimations];
}
-(IBAction)fullBack
{
    
    
    if (webpage.alpha==1.0) {
        [webpage goBack];
    }
    if (webpage2.alpha == 1.0) {
        [webpage2 goBack];
    }
}


-(IBAction)fullForward
{
    if (webpage.alpha==1.0) {
        [webpage goForward];
    }
    if (webpage2.alpha == 1.0) {
        [webpage2 goForward];
    }
}



-(IBAction)fullRefresh
{
    if (webpage.alpha==1.0) {
        [webpage reload];
    }
    if (webpage2.alpha == 1.0) {
        [webpage2 reload];
    }
    
}

-(IBAction)fullCancel
{
    
    [UIView beginAnimations: @"moveField"context: nil];
    [UIView setAnimationDelegate: self];
    [UIView setAnimationDuration: 0.5];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    
    [topBar setAlpha:1.0];
    [controls setAlpha:1.0];
    [fullurlbutton setAlpha:0.0];
    [fullBack setAlpha:0];
    [fullFor setAlpha:0];
    [fullRef setAlpha:0];
    [fullCan setAlpha:0];
    [full1 setAlpha:0.6];
    [fullurlbutton setAlpha:0.0];
    [fullurltext setAlpha:0.0];
    
    [googlebar setAlpha: 1.0];
    if (webpage.alpha==1.0) {
        webpage.frame=CGRectMake(0,44, 320, 418);
    }
    if (webpage2.alpha==1.0) {
        webpage2.frame=CGRectMake(0,44, 320, 418);
    }
    
    [UIView commitAnimations];
    
    
}


-(IBAction)refresh:(id)sender {
    if (webpage.alpha == 1.0) {
        
        
        [webpage loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    }
    if (webpage2.alpha == 1.0) {
        [webpage2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
        
        
    }
}

#warning viewDidLoad
#pragma mark - ViewDidLoad

- (void)viewDidLoad {
   
   self.harlemShake = [[VLMHarlemShake alloc] initWithLonerView:self.harlem];
    UIApplication *aplication = [UIApplication sharedApplication];
    aplication.networkActivityIndicatorVisible = YES;
    
     [blocked addTarget:self action:@selector(ONorOFF) forControlEvents:UIControlEventValueChanged];
    UIImage* navBarImage=[UIImage imageNamed:@"navBar5.png"];
    UIImage* navBar=[UIImage imageNamed:@"navBar5.png"];
    UIImage* backbut = [UIImage imageNamed:@"atras.png"];
    UIImage* forbut = [UIImage imageNamed:@"adelante.png"];
    UIImage* image = [[UIImage imageNamed:@"toolBarStrech.png"] stretchableImageWithLeftCapWidth:10.0 topCapHeight:0.0];
    
    
    if([controls respondsToSelector:@selector(setBackgroundImage:forToolbarPosition:barMetrics:)]){
        
    
        [test setBackgroundImage:navBar forBarMetrics:UIBarMetricsDefault];
        [controls setBackgroundImage:image forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        [back setImage:backbut];
        [forw setImage:forbut];
        [topBar setBackgroundImage:navBarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        [themesbar setBackgroundImage:navBar forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    }
    screen.image=[UIImage imageNamed:@"tabPH.png"];
	screen2.image=[UIImage imageNamed:@"tabPH.png"];
   
	

        if (webpage.alpha == 1.0)
        [self refresh:self];
    
    UIGraphicsBeginImageContext(webpage.frame.size);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    screen.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
	NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
	[defaults setObject:[urlbar text] forKey:@"fieldKey"];
	[defaults synchronize];
    
    [webpage addSubview:activityind];
    [webpage loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_webURL]]];
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    
    if (webpage2.alpha == 1.0) {
        
        [self refresh:self];
        
        UIGraphicsBeginImageContext(webpage2.frame.size);
        [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
        screen2.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
        [defaults setObject:[urlbar text] forKey:@"fieldKey"];
        [defaults synchronize];
        
        [webpage2 addSubview:activityind];
        [webpage2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_webURL]]];
        timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    }
    
    
    
    
    
    
}

-(IBAction)url:(id)sender{
    
    if (webpage.alpha == 1.0) {
        
        
        
        NSString *query = [urlbar.text stringByReplacingOccurrencesOfString:@" " withString:@"+"];
        NSURL *urlQuery = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", query]];
        NSURLRequest *request = [NSURLRequest requestWithURL:urlQuery];
        [webpage loadRequest:request];
    }
    
    
    else if (webpage2.alpha ==1.0) {
        
        NSString *query = [urlbar.text stringByReplacingOccurrencesOfString:@" " withString:@"+"];
        NSURL *urlQuery = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", query]];
        NSURLRequest *request = [NSURLRequest requestWithURL:urlQuery];
        [webpage2 loadRequest:request];
        
    }
    
}


/*
 -(IBAction)fullurl:(id)sender{
 if (webpage.alpha == 1.0) {
 
 
 
 NSString *query = [fullurltext.text stringByReplacingOccurrencesOfString:@" " withString:@"+"];
 NSURL *urlQuery = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", query]];
 NSURLRequest *request = [NSURLRequest requestWithURL:urlQuery];
 [webpage loadRequest:request];
 }
 
 
 else if (webpage2.alpha ==1.0) {
 
 NSString *query = [fullurltext.text stringByReplacingOccurrencesOfString:@" " withString:@"+"];
 NSURL *urlQuery = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", query]];
 NSURLRequest *request = [NSURLRequest requestWithURL:urlQuery];
 [webpage2 loadRequest:request];
 
 }
 
 }*/
- (NSString *)documentsDirectoryPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectoryPath = [paths objectAtIndex:0];
    return documentsDirectoryPath;
}



-(IBAction)google:(id)sender{
    
    if (webpage.alpha == 1.0) {
        
        NSString *query = [googlebar.text stringByReplacingOccurrencesOfString:@" " withString:@"+"];
        NSURL *urlQuery = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.google.com.mx/search?q=%@", query]];
        NSURLRequest *request = [NSURLRequest requestWithURL:urlQuery];
        [webpage loadRequest:request];
    }
    else if (webpage2.alpha == 1.0){
        
        NSString *query = [googlebar.text stringByReplacingOccurrencesOfString:@" " withString:@"+"];
        NSURL *urlQuery = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.google.com.mx/search?q=%@", query]];
        NSURLRequest *request = [NSURLRequest requestWithURL:urlQuery];
        [webpage2 loadRequest:request];
    }
    
}



- (void)loading {
    if (webpage.alpha == 1.0) {
        
        
        if (!webpage.loading)
            [activityind stopAnimating];
        
        else
            [activityind startAnimating];
    }
    if (webpage2.alpha == 1.0){
        if (!webpage2.loading)
            [activityind stopAnimating];
        
        else
            [activityind startAnimating];
    }
    
    
}


- (void)informError:(NSError *)error
{
    NSString* localizedDescription = [error localizedDescription];
    UIAlertView* alertView = [[UIAlertView alloc]
                              initWithTitle:@"Error"
                              message:localizedDescription delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
    [alertView show];
}




- (void)viewDidUnload {
    
    
    if (webpage.alpha == 1.0) {
        
        
        
        [webpage addSubview:activityind];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    }
    if (webpage2.alpha == 1.0) {
        
        [webpage2 addSubview:activityind];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    }
    
    
    
    harlem = nil;
    [self setHarlem:nil];
    [super viewDidUnload];
    
}
/*
 -(IBAction)savefiles:(id)sender{
 
 if (webpage.alpha == 1.0) {
 
 
 
 // Get the URL of the loaded ressource
 NSURL *theRessourcesURL = [[webpage request] URL];
 NSString *fileExtension = [theRessourcesURL pathExtension];
 
 if ([fileExtension isEqualToString:@"png"] || [fileExtension isEqualToString:@"jpg"] || [fileExtension isEqualToString:@"pdf"]) {
 // Get the filename of the loaded ressource form the UIWebView's request URL
 NSString *filename = [theRessourcesURL lastPathComponent];
 NSLog(@"Filename: %@", filename);
 // Get the path to the App's Documents directory
 NSString *docPath = [self documentsDirectoryPath];
 // Combine the filename and the path to the documents dir into the full path
 NSString *pathToDownloadTo = [NSString stringWithFormat:@"%@/%@", docPath, filename];
 
 
 // Load the file from the remote server
 NSData *tmp = [NSData dataWithContentsOfURL:theRessourcesURL];
 // Save the loaded data if loaded successfully
 if (tmp != nil) {
 NSError *error = nil;
 // Write the contents of our tmp object into a file
 [tmp writeToFile:pathToDownloadTo options:NSDataWritingAtomic error:&error];
 if (error != nil) {
 NSLog(@"Failed to save the file: %@", [error description]);
 } else {
 // Display an UIAlertView that shows the users we saved the file :)
 UIAlertView *filenameAlert = [[UIAlertView alloc] initWithTitle:@"File saved" message:[NSString stringWithFormat:@"The file %@ has been saved.", filename] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
 [filenameAlert show];
 
 }
 } else {
 // File could notbe loaded -> handle errors
 }
 } else {
 // File type not supported
 }
 }
 else if (webpage2.alpha ==1.0){
 // Get the URL of the loaded ressource
 NSURL *theRessourcesURL = [[webpage request] URL];
 NSString *fileExtension = [theRessourcesURL pathExtension];
 
 if ([fileExtension isEqualToString:@"png"] || [fileExtension isEqualToString:@"jpg"] || [fileExtension isEqualToString:@"pdf"]) {
 // Get the filename of the loaded ressource form the UIWebView's request URL
 NSString *filename = [theRessourcesURL lastPathComponent];
 NSLog(@"Filename: %@", filename);
 // Get the path to the App's Documents directory
 NSString *docPath = [self documentsDirectoryPath];
 // Combine the filename and the path to the documents dir into the full path
 NSString *pathToDownloadTo = [NSString stringWithFormat:@"%@/%@", docPath, filename];
 
 
 // Load the file from the remote server
 NSData *tmp = [NSData dataWithContentsOfURL:theRessourcesURL];
 // Save the loaded data if loaded successfully
 if (tmp != nil) {
 NSError *error = nil;
 // Write the contents of our tmp object into a file
 [tmp writeToFile:pathToDownloadTo options:NSDataWritingAtomic error:&error];
 if (error != nil) {
 NSLog(@"Failed to save the file: %@", [error description]);
 } else {
 // Display an UIAlertView that shows the users we saved the file :)
 UIAlertView *filenameAlert = [[UIAlertView alloc] initWithTitle:@"File saved" message:[NSString stringWithFormat:@"The file %@ has been saved.", filename] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
 [filenameAlert show];
 
 }
 } else {
 // File could notbe loaded -> handle errors
 }
 } else {
 // File type not supported
 }
 }
 
 }
 */

/**
 Just a small helper function
 that returns the path to our
 Documents directory
 **/
/*
 - (NSString *)documentsDirectoryPath {
 NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
 NSString *documentsDirectoryPath = [paths objectAtIndex:0];
 return documentsDirectoryPath;
 }
 */
-(IBAction)atras{
    if (webpage.alpha == 1.0) {
        [webpage goBack];
    }
    if (webpage2.alpha == 1.0) {
        [webpage2 goBack];
    }
}
-(IBAction)adelante{
    if (webpage.alpha == 1.0) {
        [webpage goForward];
    }
    if (webpage2.alpha == 1.0) {
        [webpage2 goForward];
    }
}
-(IBAction)recargar{
    if (webpage.alpha == 1.0) {
        [webpage reload];
    }
    if (webpage2.alpha == 1.0) {
        [webpage2 reload];
    }
}
-(IBAction)detener{
    if (webpage.alpha == 1.0) {
        [webpage stopLoading];
    }
    if (webpage2.alpha == 1.0) {
        [webpage2 stopLoading];
    }
}
/*
 -(IBAction)open2{
 
 UIActionSheet *bookmarksheet = [[UIActionSheet alloc] initWithTitle:@"Bookmarks" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles: @"Google",@"Yahoo", nil];
 [bookmarksheet showInView:self.view];
 
 }
 
 -(void)bookmarksheet:(UIActionSheet *)bookmarksheet clickedButtonAtIndex:(NSInteger)index {
 if (index == 0) {
 if (webpage.alpha == 1.0) {
 [webpage loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
 }
 
 if (webpage2.alpha == 1.0) {
 [webpage2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
 }
 }
 if (index == 1) {
 if (webpage.alpha == 1.0) {
 
 
 [webpage loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.yahoo.com"]]];
 }
 if (webpage2.alpha == 1.0) {
 [webpage2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.yahoo.com"]]];
 }
 }
 
 if (buttonIndex2 == 2) {
 if (webpage.alpha == 1.0) {
 [webpage loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.bing.com"]]];
 }
 if (webpage2.alpha ==1.0) {
 [webpage2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.bing.com"]]];
 }
 }
 }
 
 
 
 - (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
 {
 [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
 [self informError:error];
 }
 
 */

//de aqui en adelante se maneja el uiview de los temas
#pragma mark - themes

-(IBAction)theme1:(id)sender{
    UIImage* navBarImage=[UIImage imageNamed:@"barra.png"];
    UIImage* navBar=[UIImage imageNamed:@"barra.png"];
    UIImage* backbutt = [UIImage imageNamed:@"back.png"];
    UIImage*forbutt = [UIImage imageNamed:@"Forward.png"];
    UIImage* image = [UIImage imageNamed:@"barracontrol.png"];
    
    if([controls respondsToSelector:@selector(setBackgroundImage:forToolbarPosition:barMetrics:)]){
        [back setImage:backbutt];
        [forw setImage:forbutt];
        [bookmark.navBar setBackgroundImage:navBar forBarMetrics:UIBarMetricsDefault];
        
        [controls setBackgroundImage:image forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        
        [topBar setBackgroundImage:navBarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        [themesbar setBackgroundImage:navBar forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        
    }
     
}
-(IBAction)theme2:(id)sender{
    UIImage* navBarImage=[UIImage imageNamed:@"navBar5.png"];
    UIImage* navBar=[UIImage imageNamed:@"navBar5.png"];
    
    UIImage* image = [UIImage imageNamed:@"controlbar.png"];
    
    if([controls respondsToSelector:@selector(setBackgroundImage:forToolbarPosition:barMetrics:)]){
        
        
        
        [controls setBackgroundImage:image forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        
        [topBar setBackgroundImage:navBarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        [themesbar setBackgroundImage:navBar forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    }
   

}
-(IBAction)theme3:(id)sender{
    UIImage* navBarImage=[UIImage imageNamed:@"Barra3.png"];
    UIImage* navBar=[UIImage imageNamed:@"Barra3.png"];
    
    UIImage* image = [UIImage imageNamed:@"Barra3.png"];
    
    if([controls respondsToSelector:@selector(setBackgroundImage:forToolbarPosition:barMetrics:)]){
        
        
        
        [controls setBackgroundImage:image forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        
        [topBar setBackgroundImage:navBarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        [themesbar setBackgroundImage:navBar forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    }
    

}

-(IBAction)restore:(id)sender{
    UIImage* navBarImage=[UIImage imageNamed:@"navBar5.png"];
    UIImage *backButton = [UIImage imageNamed:@"atras.png"];
    UIImage *forButton = [UIImage imageNamed:@"adelante.png"];
    UIImage* image = [[UIImage imageNamed:@"toolBarStrech.png"] stretchableImageWithLeftCapWidth:10.0 topCapHeight:0.0];
    
    
    if([controls respondsToSelector:@selector(setBackgroundImage:forToolbarPosition:barMetrics:)]){
        
        [back setImage:backButton];
        [forw setImage:forButton];
        
        [controls setBackgroundImage:image forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
        
        [topBar setBackgroundImage:navBarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
       
    }
   

}
-(IBAction)ok:(id)sender{
    [theme1 setAlpha:0.0];
    [theme2 setAlpha:0.0];
    [theme3 setAlpha:0.0];
    [restore setAlpha:0.0];
    [ok setAlpha:0.0];
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    
    
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
        toInterfaceOrientation == UIInterfaceOrientationLandscapeRight ||
        topBar.alpha == 0.0  ){
        toInterfaceOrientation = UIInterfaceOrientationLandscapeLeft;
        toInterfaceOrientation = UIInterfaceOrientationLandscapeRight;
            
                
    }
    else
        [topBar setAlpha:1.0];
        [controls setAlpha:1.0];
    
    {
                
    }
    
    
}



- (IBAction)Harlem:(id)sender {
    [self.harlemShake shakeWithCompletion:^{
        NSLog(@"Shaking done.");
    }];
}
@end
