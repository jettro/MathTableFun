//
// Created by jcoenradie on 9/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "ShuffledTablesViewController.h"


@implementation ShuffledTablesViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    lowestTable.text = @"1";
    highestTable.text = @"10";
}

- (void)viewDidUnload {
    lowestTable = nil;
    highestTable = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}


@end