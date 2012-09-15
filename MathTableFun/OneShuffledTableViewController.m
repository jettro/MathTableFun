//
// Created by jcoenradie on 9/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "OneShuffledTableViewController.h"


@implementation OneShuffledTableViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    chosenTable.text = @"1";
}

- (void) viewDidUnload {
    chosenTable = nil;
    [super viewDidUnload];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation) toInterfaceOrientation {
    return YES;
}

@end