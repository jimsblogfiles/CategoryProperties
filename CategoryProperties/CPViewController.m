//
//  CPViewController.m
//  CategoryProperties
//
//  Created by James Border on 6/18/13.
//  Copyright (c) 2013 James Border. All rights reserved.
//

#import "CPViewController.h"
#import "UIButton+CustomProperties.h"

@interface CPViewController ()

@property (weak, nonatomic) IBOutlet UIButton *buttTest;

@end

@implementation CPViewController

- (IBAction)actionViewProperties:(id)sender {

    UIButton *sendingButton = sender;

    NSString *objectFoo = [sendingButton.miscData objectForKey:@"foo"];

    NSString *displayString = [NSString stringWithFormat:@"Client: %@\rFoo: %@", sendingButton.client, objectFoo];

    UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle: @"Alert"
                               message: displayString
                              delegate: self
                     cancelButtonTitle: @"OK"
                     otherButtonTitles: nil];

    [alert show];

}

#pragma mark -
#pragma mark

- (void)viewDidLoad
{

    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.

    NSDictionary *dictionary = @{@"foo" : @"bar"};

    [_buttTest setMiscData:dictionary];
    [_buttTest setClient:@"Mr Jones"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
