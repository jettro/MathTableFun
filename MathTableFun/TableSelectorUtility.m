//
// Created by jcoenradie on 9/16/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "TableSelectorUtility.h"
#import "SelectTableViewController.h"


@implementation TableSelectorUtility {

}
+ (void)selectTableFromControllerUsingSegue:(UIStoryboardSegue *)segue withName:(NSString *)nameOfSegue intoLabel:(UILabel *)label {
    [self selectTableFromControllerUsingSegue:segue withName:nameOfSegue intoLabel:label withBlock:nil];
}

+ (void)selectTableFromControllerUsingSegue:(UIStoryboardSegue *)segue withName:(NSString *)nameOfSegue intoLabel:(UILabel *)label withBlock:(void (^)(void))block {
    NSLog(@"About to select a table");
    if ([[segue identifier] isEqualToString:nameOfSegue]) {
        NSLog(@"We have the right segue: %@", nameOfSegue);
        SelectTableViewController *selectTableViewController = [segue destinationViewController];
        selectTableViewController.selectedTable = label.text;
        selectTableViewController.tableSelected = ^(NSString *selectedTable) {
            NSLog(@"Now set the label.text to %@", selectedTable);
            label.text = selectedTable;
            if (block != nil) {
                block();
            }
        };
    }
}

@end