//
// Created by jcoenradie on 9/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "ShuffledTablesViewController.h"
#import "TableSelectorUtility.h"

@implementation ShuffledTablesViewController {
    int angle;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    angle = 0;
    lowestTable.text = @"1";
    highestTable.text = @"10";

    NSLog(@"The lowest value is %@", [(UILabel *) [self.view viewWithTag:101] text]);
    NSLog(@"The highest value is %@", [(UILabel *) [self.view viewWithTag:102] text]);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NSString *nameOfSegue = @"Choose Lowest Table";
    __weak UILabel *labelToSelectValueFor = lowestTable;

    [TableSelectorUtility selectTableFromControllerUsingSegue:segue withName:nameOfSegue intoLabel:labelToSelectValueFor];
}

@end