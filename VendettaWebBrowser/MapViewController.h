//
//  MapViewController.h
//  Vendetta Web Browser
//
//  Created by David Ivan Perez Salazar on 30/09/12.
//  Copyright (c) 2012 Vendetta Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface AddressAnnotation : NSObject<MKAnnotation> {
	CLLocationCoordinate2D coordinate;
	
	NSString *mTitle;
	NSString *mSubTitle;
}

@end

@interface MapViewController : UIViewController{
    MKMapView *mapView;
    IBOutlet UITextField *addressField;
    AddressAnnotation *addAnnotation;
    IBOutlet UIBarButtonItem *goButton;
    UINavigationBar *navBar;
    UIToolbar *tool;
}

@property(nonatomic, retain) IBOutlet MKMapView *mapView;
-(IBAction)localization:(id)sender;
-(IBAction)setmap:(id)sender;
- (IBAction) showAddress;
-(CLLocationCoordinate2D) addressLocation;
@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;
@property (nonatomic, retain) IBOutlet UIToolbar *tool;

@end
