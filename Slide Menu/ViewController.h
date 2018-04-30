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
    
    IBOutlet UIImage *oImg;
    IBOutlet UIImage *xImg;
    int playerTurn;
    int movesCounter;
    
}

@property(strong,nonatomic) IBOutlet MKMapView *mapview;

@property (weak, nonatomic) IBOutlet UIImageView *s1;
@property (weak, nonatomic) IBOutlet UIImageView *s2;
@property (weak, nonatomic) IBOutlet UIImageView *s3;
@property (weak, nonatomic) IBOutlet UIImageView *s4;
@property (weak, nonatomic) IBOutlet UIImageView *s5;
@property (weak, nonatomic) IBOutlet UIImageView *s6;
@property (weak, nonatomic) IBOutlet UIImageView *s7;
@property (weak, nonatomic) IBOutlet UIImageView *s8;
@property (weak, nonatomic) IBOutlet UIImageView *s9;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;

- (IBAction)setMap:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *board;

@property (weak, nonatomic) IBOutlet UILabel *whoseTurn;

- (IBAction)resetBtn:(UIButton *)sender;

-(void) updatePlayerInfo;
-(void) resetBoard;
-(BOOL) checkForWin;
-(BOOL) checkForDraw;


@end

