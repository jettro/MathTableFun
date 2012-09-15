//
// Created by jcoenradie on 9/14/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "SelectTableViewController.h"


@implementation SelectTableViewController {

}
@synthesize selectedTable;
@synthesize tableSelected;

- (IBAction) closeModal:(id) sender {
    NSString *table = tableTextField.text;
    tableSelected(table);

    [self dismissModalViewControllerAnimated:YES];
}

- (void) viewDidLoad {
    tableTextField.text = selectedTable;
}

@end