//
// Created by jcoenradie on 9/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <UIKit/UIKit.h>


@interface OneShuffledTableViewController : UIViewController {

    __weak IBOutlet UILabel *chosenTable;
    __weak IBOutlet UILabel *tableTimesLabel;
    __weak IBOutlet UILabel *currentTableLabel;
    __weak IBOutlet UITextField *answerInput;
    __weak IBOutlet UITextView *answersReport;
}
- (IBAction)nextAssignment:(id)sender;


@end