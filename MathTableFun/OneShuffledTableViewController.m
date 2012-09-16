//
// Shuffle as discussed here:
// https://gist.github.com/1156719#file_ns_mutable_array+shuffle.h
//


#import "OneShuffledTableViewController.h"
#import "TableSelectorUtility.h"
#import "NSMutableArrayShuffle.h"


@implementation OneShuffledTableViewController {
    NSMutableArray *assignments;
    NSMutableArray *answers;
    NSUInteger currentAssignmentNumber;
}
- (void)viewDidLoad {
    chosenTable.text = @"";
    tableTimesLabel.text = @"-";
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:sender];
    void (^block)(void) = ^() {
        answers = [NSMutableArray arrayWithCapacity:10];
        assignments = [NSMutableArray arrayWithCapacity:10];
        for (int j = 0; j < 10; j++) {
            [assignments addObject:[NSNumber numberWithInt:j + 1].stringValue];
        }
        [assignments shuffle];
        currentAssignmentNumber = 0;
        currentTableLabel.text = chosenTable.text;
        tableTimesLabel.text = [assignments objectAtIndex:0];
        answersReport.text = @"";
        answerInput.text = @"";
    };

    [TableSelectorUtility selectTableFromControllerUsingSegue:segue withName:@"Choose Mix Table" intoLabel:chosenTable withBlock:block];
}


- (void)viewDidUnload {
    tableTimesLabel = nil;
    currentTableLabel = nil;
    answerInput = nil;
    answersReport = nil;
    [super viewDidUnload];
}

- (IBAction)nextAssignment:(id)sender {
    if (answerInput.text.length > 0) {
        [answers addObject:answerInput.text];
        if (currentAssignmentNumber < 9) { // has next assignment
            currentAssignmentNumber += 1;
            tableTimesLabel.text = [assignments objectAtIndex:currentAssignmentNumber];
            answerInput.text = @"";
        } else {
            NSMutableString *assignmentString = [NSMutableString stringWithCapacity:200];
            for (int j = 0; j < 10; j++) {
                NSUInteger index = j;
                [assignmentString appendString:[assignments objectAtIndex:index]];
                [assignmentString appendString:@" x "];
                [assignmentString appendString:currentTableLabel.text];
                [assignmentString appendString:@" = "];
                [assignmentString appendString:[answers objectAtIndex:index]];
                int correctAnswer = currentTableLabel.text.intValue * ((NSString *) [assignments objectAtIndex:index]).intValue;
                if (((NSString *) [answers objectAtIndex:index]).intValue != correctAnswer) {
                    [assignmentString appendString:@" Fout"];
                }
                [assignmentString appendString:@"\n"];
            }
            [answersReport setText:assignmentString];
        }
    }
}
@end