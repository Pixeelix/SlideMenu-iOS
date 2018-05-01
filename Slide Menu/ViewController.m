//
//  ViewController.m
//  Slide Menu
//
//  Created by Greete Jõgi on 29/04/2018.
//  Copyright © 2018 Martin Pihooja. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"


@implementation ViewController

@synthesize whoseTurn, s1, s2, s3, s4, s5, s6, s7, s8, s9;

@synthesize mapview = _mapview;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    oImg = [UIImage imageNamed: @"Nought.png"];
    xImg = [UIImage imageNamed: @"Cross.png"];
    
    // set the player to 1
    playerTurn = 1;
    //set movesCounter to 0;
    movesCounter = 0;
    //set all image boxes at the board NOT CLICKED
    s1Clicked = FALSE;
    s2Clicked = FALSE;
    s3Clicked = FALSE;
    s4Clicked = FALSE;
    s5Clicked = FALSE;
    s6Clicked = FALSE;
    s7Clicked = FALSE;
    s8Clicked = FALSE;
    s9Clicked = FALSE;
    //update the label
    whoseTurn.text = @"X will start the game";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// MAP //
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

// TIC TAC TOE GAME //
-(void) updatePlayerInfo
{
    if (playerTurn == 1)
    {
        playerTurn = 2;
        whoseTurn.text = @"It is O turn";
        NSLog(@"player is = %i", playerTurn);
    }
    else if (playerTurn == 2)
    {
        playerTurn = 1;
        whoseTurn.text = @"It is X turn";
        NSLog(@"player is = %i", playerTurn);
    }
    
    if ([self checkForWin])
    {
        
        UIAlertController *someOneWon= [UIAlertController
                                        alertControllerWithTitle:@"There's a Winner"
                                        message: whoIsTheWinner
                                        preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok"
                                                        style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction * action)
        {
            // Ok action example
        }];
        
        [someOneWon addAction:okAction];
        [self presentViewController:someOneWon animated:YES completion:nil];
        [self resetBoard];
    }
    
    if ([self checkForDraw])
    {
        UIAlertController *itIsDraw= [UIAlertController alertControllerWithTitle:@"Draw" message:@"Nobody won" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
            // Ok action example
        }];
        [itIsDraw addAction:okAction];
        [self presentViewController:itIsDraw animated:YES completion:nil];
        [self resetBoard];
        
    }
}

//the touch event for tic-tac-toe game
- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches]anyObject];
    //check which UIImage view was touched
    if((CGRectContainsPoint([s1 frame], [touch locationInView: self.view]))&& s1Clicked == FALSE)
    {
        if(playerTurn == 1){ s1.image = xImg; }
        if(playerTurn == 2){ s1.image = oImg; }
        movesCounter += 1;
        s1Clicked = TRUE;
        [self updatePlayerInfo];
    }
    if((CGRectContainsPoint([s2 frame], [touch locationInView: self.view])) && s2Clicked == FALSE)
    {
        if(playerTurn == 1){ s2.image = xImg; }
        if(playerTurn == 2){ s2.image = oImg; }
        movesCounter += 1;
        s2Clicked = TRUE;
        [self updatePlayerInfo];
    }
    if((CGRectContainsPoint([s3 frame], [touch locationInView: self.view])) && s3Clicked == FALSE)
    {
        if(playerTurn == 1){ s3.image = xImg; }
        if(playerTurn == 2){ s3.image = oImg; }
        movesCounter += 1;
        s3Clicked = TRUE;
        [self updatePlayerInfo];
    }
    if((CGRectContainsPoint([s4 frame], [touch locationInView: self.view])) && s4Clicked == FALSE)
    {
        if(playerTurn == 1){ s4.image = xImg; }
        if(playerTurn == 2){ s4.image = oImg; }
        movesCounter += 1;
        s4Clicked = TRUE;
        [self updatePlayerInfo];
    }
    if((CGRectContainsPoint([s5 frame], [touch locationInView: self.view])) && s5Clicked == FALSE)
    {
        if(playerTurn == 1){ s5.image = xImg; }
        if(playerTurn == 2){ s5.image = oImg; }
        movesCounter += 1;
        s5Clicked = TRUE;
        [self updatePlayerInfo];
    }
    if((CGRectContainsPoint([s6 frame], [touch locationInView: self.view])) && s6Clicked == FALSE)
    {
        if(playerTurn == 1){ s6.image = xImg; }
        if(playerTurn == 2){ s6.image = oImg; }
        movesCounter += 1;
        s6Clicked = TRUE;
        [self updatePlayerInfo];
    }
    if((CGRectContainsPoint([s7 frame], [touch locationInView: self.view])) && s7Clicked == FALSE)
    {
        if(playerTurn == 1){ s7.image = xImg; }
        if(playerTurn == 2){ s7.image = oImg; }
        movesCounter += 1;
        s7Clicked = TRUE;
        [self updatePlayerInfo];
    }
    if((CGRectContainsPoint([s8 frame], [touch locationInView: self.view])) && s8Clicked == FALSE)
    {
        if(playerTurn == 1){ s8.image = xImg; }
        if(playerTurn == 2){ s8.image = oImg; }
        movesCounter += 1;
        s8Clicked = TRUE;
        [self updatePlayerInfo];
    }
    if((CGRectContainsPoint([s9 frame], [touch locationInView: self.view])) && s9Clicked == FALSE)
    {
        if(playerTurn == 1){ s9.image = xImg; }
        if(playerTurn == 2){ s9.image = oImg; }
        movesCounter += 1;
        s9Clicked = TRUE;
        [self updatePlayerInfo];
    }
    
}

-(void) resetBoard
{
    //Cleare the images stored in the UIImageView
    s1.image = NULL;
    s2.image = NULL;
    s3.image = NULL;
    s4.image = NULL;
    s5.image = NULL;
    s6.image = NULL;
    s7.image = NULL;
    s8.image = NULL;
    s9.image = NULL;
    //Set all image boxes at the board to NOT CLICKED
    s1Clicked = FALSE;
    s2Clicked = FALSE;
    s3Clicked = FALSE;
    s4Clicked = FALSE;
    s5Clicked = FALSE;
    s6Clicked = FALSE;
    s7Clicked = FALSE;
    s8Clicked = FALSE;
    s9Clicked = FALSE;
    //Reset the player and update the label
    playerTurn = 1;
    movesCounter = 0;
    whoseTurn.text =@"X is going to start again.";
}

-(BOOL) checkForWin
{
    //Horizontal wins
    if((s1.image == s2.image) & (s2.image == s3.image) & (s1.image != NULL))
    {
        if(s1.image == xImg)
        {
            whoIsTheWinner = @"X is the Winner";
        }
        else if (s1.image == oImg)
        {
            whoIsTheWinner = @"O is the Winner"; // O won the game
        }
        return TRUE;
    }
    if((s4.image == s5.image) & (s5.image == s6.image) & (s4.image != NULL))
    {
        if(s4.image == xImg)
        {
            whoIsTheWinner = @"X is the Winner"; // X won the game
        }
        else if (s4.image == oImg)
        {
            whoIsTheWinner = @"O is the Winner"; // O won the game
        }
        return TRUE;
    }
    if((s7.image == s8.image) & (s8.image == s9.image) & (s7.image != NULL))
    {
        if(s7.image == xImg)
        {
            whoIsTheWinner = @"X is the Winner"; // X won the game
        }
        else if (s7.image == oImg)
        {
            whoIsTheWinner = @"O is the Winner"; // O won the game
        }
        return TRUE;
    }
    //Vertical wins
    if((s1.image == s4.image) & (s4.image == s7.image) & (s1.image != NULL))
    {
        if(s1.image == xImg)
        {
            whoIsTheWinner = @"X is the Winner"; // X won the game
        }
        else if (s1.image == oImg)
        {
            whoIsTheWinner = @"O is the Winner"; // O won the game
        }
        return TRUE;
    }
    if((s2.image == s5.image) & (s5.image == s8.image) & (s2.image != NULL))
    {
        if(s2.image == xImg)
        {
            whoIsTheWinner = @"X is the Winner"; // X won the game
        }
        else if (s2.image == oImg)
        {
            whoIsTheWinner = @"O is the Winner"; // O won the game
        }
        return TRUE;
    }
    if((s3.image == s6.image) & (s6.image == s9.image) & (s3.image != NULL))
    {
        if(s3.image == xImg)
        {
            whoIsTheWinner = @"X is the Winner"; // X won the game
        }
        else if (s3.image == oImg)
        {
            whoIsTheWinner = @"O is the Winner"; // O won the game
        }
        return TRUE;
    }
    //Diagonal wins
    if((s1.image == s5.image) & (s5.image == s9.image) & (s1.image != NULL))
    {
        if(s1.image == xImg)
        {
            whoIsTheWinner = @"X is the Winner"; // X won the game
        }
        else if (s1.image == oImg)
        {
            whoIsTheWinner = @"O is the Winner"; // O won the game
        }
        return TRUE;
    }
    if((s3.image == s5.image) & (s5.image == s7.image) & (s3.image != NULL))
    {
        if(s3.image == xImg)
        {
            whoIsTheWinner = @"X is the Winner"; // X won the game
        }
        else if (s3.image == oImg)
        {
            whoIsTheWinner = @"O is the Winner"; // O won the game
        }
        return TRUE;
    }
    return FALSE;
}

-(BOOL) checkForDraw
{
    if(movesCounter == 9)
    {
        return TRUE;
    }
    return FALSE;
}

- (IBAction)resetBtn:(UIButton *)sender
{
    [self resetBoard];
}

@end
