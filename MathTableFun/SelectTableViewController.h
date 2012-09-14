//
// Created by jcoenradie on 9/14/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface SelectTableViewController : UIViewController
{
    
    __weak IBOutlet UILabel *oldTableLabel;
}

@property(nonatomic, copy) NSString *selectedTable;

- (IBAction)closeModal:(id)sender;

@end