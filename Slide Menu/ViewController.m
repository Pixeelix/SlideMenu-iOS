//
//  ViewController.m
//  Slide Menu
//
//  Created by Greete Jõgi on 29/04/2018.
//  Copyright © 2018 Martin Pihooja. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mapview = _mapview;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)setMap:(id)sender
{
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            _mapview.mapType = MKMapTypeStandard;
            break;
        case 1:
            _mapview.mapType = MKMapTypeSatellite;
        case 2:
            _mapview.mapType = MKMapTypeHybrid;
        default:
            break;
    }
}

- (IBAction)action:(UIButton *)sender {
}

- (IBAction)action:(id)sender {
}
@end
