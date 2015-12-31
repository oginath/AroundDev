//
//  MapViewController.m
//  aroundTest1
//
//  Created by Dor Hivert on 24/12/2015.
//  Copyright © 2015 around. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

- (void)viewDidLoad
{
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager startUpdatingLocation];
    
    self.mapView.showsUserLocation=YES;
    self.mapView.delegate = self;
    [self.mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    
    [self addAnnotationToMap:(31.970257) withmyLongitude:(34.77187) withmyName:(@"Colman") withmyDesc:(@"The College of managment")] ;
    
    UILongPressGestureRecognizer *lpgr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPress:)];
    lpgr.minimumPressDuration = 1.47; 
    [self.mapView addGestureRecognizer:lpgr];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)handleLongPress:(UIGestureRecognizer *)gestureRecognizer
{
    if (gestureRecognizer.state != UIGestureRecognizerStateBegan)
        return;
    
    CGPoint touchPoint = [gestureRecognizer locationInView:self.mapView];
    CLLocationCoordinate2D touchMapCoordinate = [self.mapView convertPoint:touchPoint toCoordinateFromView:self.mapView];
    double myLATI = touchMapCoordinate.latitude;
    double myLONG = touchMapCoordinate.longitude;
    
    NSString* myMessege = [NSString stringWithFormat:@"%f,%f", myLATI, myLONG];
    
    [self addAnnotationToMap:(myLATI) withmyLongitude:(myLONG) withmyName:(@"Selected Location") withmyDesc:(myMessege)] ;
}

- (void)addAnnotationToMap:(double)myLatitude withmyLongitude:(double)myLongitude withmyName:(NSString*)myName withmyDesc:(NSString*)myDesc
{
    CLLocationCoordinate2D myCoordinates;
    myCoordinates.latitude = myLatitude;
    myCoordinates.longitude = myLongitude;
    
    MKPointAnnotation *myPoint = [[MKPointAnnotation alloc] init];
    myPoint.coordinate = myCoordinates;
    myPoint.title = myName;
    myPoint.subtitle = myDesc;
    
    [self.mapView addAnnotation:myPoint];
}
@end
