//
// Created by jcoenradie on 9/14/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "SelectTableViewController.h"


@implementation SelectTableViewController {

}
@synthesize selectedTable = _selectedTable;

- (void) setSelectedTable:(NSString *) newSelectedTable {
    _selectedTable = newSelectedTable;
    oldTableLabel.text = _selectedTable;
}

- (IBAction)closeModal:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidUnload {
    oldTableLabel = nil;
    [super viewDidUnload];
}
@end