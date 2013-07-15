//
//  HistoryViewController.m
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 23/09/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import "HistoryViewController.h"
#import "ViewController.h"

@interface HistoryViewController ()

@end

@implementation HistoryViewController
@synthesize history, explorerView;
@synthesize navBar, tool;

-(IBAction)done:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [history count];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] ;
        
    }
    
    
    
    cell.textLabel.text = [history objectAtIndex:indexPath.row];
    
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    explorerView.urlbar.text = [history objectAtIndex:indexPath.row];
    
    [explorerView textFieldShouldReturn:explorerView.urlbar];
    
    
    [self dismissModalViewControllerAnimated:YES];
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [history removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
        
        [[NSUserDefaults standardUserDefaults] setObject:history forKey:@"History"];
        
    }
    
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    UIImage* navBarImage=[UIImage imageNamed:@"navBar5.png"];
    UIImage* image = [[UIImage imageNamed:@"toolBarStrech.png"] stretchableImageWithLeftCapWidth:10.0 topCapHeight:0.0];
    [navBar setBackgroundImage:navBarImage forBarMetrics:UIBarMetricsDefault];
    [tool setBackgroundImage:image forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    
    
    history = [[[NSUserDefaults standardUserDefaults] arrayForKey:@"History"] mutableCopy];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
   }




- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end