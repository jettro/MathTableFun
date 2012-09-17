//
// Created by jcoenradie on 9/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <UIKit/UIKit.h>


@interface ShuffledTablesViewController : UIViewController {

    __weak IBOutlet UILabel *lowestTable;
    __weak IBOutlet UILabel *highestTable;

    __weak IBOutlet UILabel *assignment1;
    __weak IBOutlet UILabel *assignment2;
    __weak IBOutlet UILabel *assignment3;
    __weak IBOutlet UILabel *assignment4;
    __weak IBOutlet UILabel *assignment5;
    __weak IBOutlet UILabel *assignment6;
    __weak IBOutlet UILabel *assignment7;
    __weak IBOutlet UILabel *assignment8;
    __weak IBOutlet UILabel *assignment9;
    __weak IBOutlet UILabel *assignment10;


    __weak IBOutlet UITextField *answer1;
    __weak IBOutlet UITextField *answer2;
    __weak IBOutlet UITextField *answer3;
    __weak IBOutlet UITextField *answer4;
    __weak IBOutlet UITextField *answer5;
    __weak IBOutlet UITextField *answer6;
    __weak IBOutlet UITextField *answer7;
    __weak IBOutlet UITextField *answer8;
    __weak IBOutlet UITextField *answer9;
    __weak IBOutlet UITextField *answer10;

    __weak IBOutlet UIButton *startTestButton;
}
- (IBAction)startAssignment:(id)sender;

- (IBAction)checkAnswer:(id)sender;

@end