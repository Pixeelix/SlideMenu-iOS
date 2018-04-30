//
//  NavicationViewController.m
//  Slide Menu
//
//  Created by Greete Jõgi on 29/04/2018.
//  Copyright © 2018 Martin Pihooja. All rights reserved.
//

#import "NavicationViewController.h"
#import "SWRevealViewController.h"

@interface NavicationViewController ()

@end

@implementation NavicationViewController
{
    NSArray *menu;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    menu = @[@"home", @"map", @"third"];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [menu count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = [menu objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //If you call some view, it will go there
    if ([segue isKindOfClass:[SWRevealViewControllerSegue class]])
    {
        SWRevealViewControllerSegue *swSegue = (SWRevealViewControllerSegue*) segue;
        swSegue.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc)
        {
            UINavigationController* navController = (UINavigationController*)self.revealViewController.frontViewController;
            [navController setViewControllers: @[dvc] animated: FALSE];
            [self.revealViewController setFrontViewPosition: FrontViewPositionLeft animated: TRUE];
        };
    }
}


@end
