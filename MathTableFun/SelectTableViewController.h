//
// Created by jcoenradie on 9/14/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface SelectTableViewController : UIViewController {
    __weak IBOutlet UILabel *oldTableLabel;
    __weak IBOutlet UITextField *tableTextField;
}

@property(nonatomic, copy) NSString *selectedTable;
@property(nonatomic, copy) void (^tableSelected) (NSString *);

- (IBAction) closeModal:(id) sender;

@end