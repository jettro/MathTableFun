//
// Created by jcoenradie on 9/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "ShuffledTablesViewController.h"
#import "SelectTableViewController.h"


@implementation ShuffledTablesViewController
{
    int angle;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }

    NSLog(@"Do some init");
    angle = 0;
    lowestTable.text = @"1";
    highestTable.text = @"10";

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"The lowest value is %@", [(UILabel *) [self.view viewWithTag:101] text]);
    NSLog(@"The highest value is %@", [(UILabel *)[self.view viewWithTag:102] text]);
}

- (void)viewDidUnload {
    lowestTable = nil;
    highestTable = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"Choose Table"]) {
        NSLog(@"About to do something with the Choosen table");
        SelectTableViewController *selectTableViewController = [segue destinationViewController];
        selectTableViewController.selectedTable = @"De tafel";
    } else{
        NSLog(@"The Segue is not right %@",[segue identifier]);
    }
}


@end