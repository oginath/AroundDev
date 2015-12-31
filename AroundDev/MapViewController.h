//
//  MapViewController.h
//  aroundTest1
//
//  Created by Dor Hivert on 24/12/2015.
//  Copyright © 2015 around. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@import CoreLocation;

@interface MapViewController : UIViewController <MKMapViewDelegate,CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end
