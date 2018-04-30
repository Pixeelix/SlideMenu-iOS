//
//  ViewController.h
//  Slide Menu
//
//  Created by Greete Jõgi on 29/04/2018.
//  Copyright © 2018 Martin Pihooja. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>

@interface ViewController : UIViewController
{
    MKMapView *mapView;
}

@property(strong,nonatomic) IBOutlet MKMapView *mapview;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;

- (IBAction)setMap:(id)sender;

- (IBAction)action:(UIButton *)sender;




@end

