//
// Created by jcoenradie on 9/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "ShuffledTablesViewController.h"
#import "TableSelectorUtility.h"

@implementation ShuffledTablesViewController {
    NSMutableArray *assignments;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [startTestButton setTitle:@"Start test" forState:UIControlStateNormal];
    [startTestButton setTitle:@"Sommen maken" forState:UIControlStateDisabled];
    lowestTable.text = @"1";
    highestTable.text = @"10";

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSString *nameOfLowestSegue = @"Choose Lowest Table";
    NSString *nameOfHighestSegue = @"Choose Highest Table";

    if ([[segue identifier] isEqualToString:nameOfLowestSegue]) {
        __weak UILabel *labelToSelectValueForLowest = lowestTable;
        [TableSelectorUtility selectTableFromControllerUsingSegue:segue withName:nameOfLowestSegue intoLabel:labelToSelectValueForLowest];
    } else if ([[segue identifier] isEqualToString:nameOfHighestSegue]) {
        __weak UILabel *labelToSelectValueForHighest = highestTable;
        [TableSelectorUtility selectTableFromControllerUsingSegue:segue withName:nameOfHighestSegue intoLabel:labelToSelectValueForHighest];
    }

}

- (IBAction)startAssignment:(id)sender {
    [startTestButton setEnabled:NO];

    answer1.text = @"";
    answer2.text = @"";
    answer3.text = @"";
    answer4.text = @"";
    answer5.text = @"";
    answer6.text = @"";
    answer7.text = @"";
    answer8.text = @"";
    answer9.text = @"";
    answer10.text = @"";

    answer1.backgroundColor = [UIColor clearColor];
    answer2.backgroundColor = [UIColor clearColor];
    answer3.backgroundColor = [UIColor clearColor];
    answer4.backgroundColor = [UIColor clearColor];
    answer5.backgroundColor = [UIColor clearColor];
    answer6.backgroundColor = [UIColor clearColor];
    answer7.backgroundColor = [UIColor clearColor];
    answer8.backgroundColor = [UIColor clearColor];
    answer9.backgroundColor = [UIColor clearColor];
    answer10.backgroundColor = [UIColor clearColor];

    assignments = [NSMutableArray arrayWithCapacity:10];
    for (int j = 0; j < 10; j++) {
        NSNumber *table = [NSNumber numberWithInt:arc4random_uniform([highestTable text].intValue) + 1];
        NSNumber *times = [NSNumber numberWithInt:arc4random_uniform(10) + 1];
        NSArray *assignment = [NSArray arrayWithObjects:times, table, nil];
        [assignments addObject:assignment];
    }

    assignment1.text = [self createAssignmentString:0];
    assignment2.text = [self createAssignmentString:1];
    assignment3.text = [self createAssignmentString:2];
    assignment4.text = [self createAssignmentString:3];
    assignment5.text = [self createAssignmentString:4];
    assignment6.text = [self createAssignmentString:5];
    assignment7.text = [self createAssignmentString:6];
    assignment8.text = [self createAssignmentString:7];
    assignment9.text = [self createAssignmentString:8];
    assignment10.text = [self createAssignmentString:9];
}

- (NSMutableString *)createAssignmentString:(NSUInteger)itemToCreate {
    NSMutableString *assignmentString = [NSMutableString stringWithCapacity:10];
    NSNumber *times = (NSNumber *) [((NSArray *) [assignments objectAtIndex:itemToCreate]) objectAtIndex:0];
    NSNumber *table = (NSNumber *) [((NSArray *) [assignments objectAtIndex:itemToCreate]) objectAtIndex:1];
    [assignmentString appendString:[times stringValue]];
    [assignmentString appendString:@" x "];
    [assignmentString appendString:[table stringValue]];
    [assignmentString appendString:@" = "];
    return assignmentString;
}

- (IBAction)checkAnswer:(id)sender {
    int numErrors = 0;
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:0] answer:answer1];
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:1] answer:answer2];
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:2] answer:answer3];
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:3] answer:answer4];
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:4] answer:answer5];
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:5] answer:answer6];
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:6] answer:answer7];
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:7] answer:answer8];
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:8] answer:answer9];
    numErrors += [self checkAnswerFor:(NSArray *) [assignments objectAtIndex:9] answer:answer10];

    if (numErrors == 0) {
        [startTestButton setEnabled:YES];
    }
}

- (int)checkAnswerFor:(NSArray *)assignment  answer:(UITextField *)answer {
    NSNumber *times = (NSNumber *) [assignment objectAtIndex:0];
    NSNumber *table = (NSNumber *) [assignment objectAtIndex:1];
    if (times.intValue * table.intValue == answer.text.intValue) {
        answer.backgroundColor = [UIColor greenColor];
        return 0;
    } else {
        return 1;
    }
}

- (void)viewDidUnload {
    assignment1 = nil;
    assignment2 = nil;
    assignment3 = nil;
    assignment4 = nil;
    assignment5 = nil;
    assignment6 = nil;
    assignment7 = nil;
    assignment8 = nil;
    assignment9 = nil;
    assignment10 = nil;
    answer1 = nil;
    answer2 = nil;
    answer3 = nil;
    answer4 = nil;
    answer5 = nil;
    answer6 = nil;
    answer7 = nil;
    answer8 = nil;
    answer9 = nil;
    answer10 = nil;
    startTestButton = nil;
    [super viewDidUnload];
}
@end