//
//  GSViewController.m
//  MathTableFun
//
//  Created by Jettro Coenradie on 9/6/12.
//  Copyright (c) 2012 Jettro Coenradie. All rights reserved.
//

#import "GSViewController.h"

@implementation GSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    selectedTableNumber = nil;
    timesOne = nil;
    timesTwo = nil;
    timesThree = nil;
    timesFour = nil;
    timesFive = nil;
    timesSix = nil;
    timesSeven = nil;
    timesEight = nil;
    timesNine = nil;
    timesTen = nil;
    answerOne = nil;
    answerTwo = nil;
    answerThree = nil;
    answerFour = nil;
    answerFive = nil;
    answerSix = nil;
    answerSeven = nil;
    answerEight = nil;
    answerNine = nil;
    answerTen = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (IBAction)changeTableAction:(id)sender {
    NSLog(@"Je hebt de tafel van %@ gekozen", selectedTableNumber.text);
    timesOne.text = selectedTableNumber.text;
    timesTwo.text = selectedTableNumber.text;
    timesThree.text = selectedTableNumber.text;
    timesFour.text = selectedTableNumber.text;
    timesFive.text = selectedTableNumber.text;
    timesSix.text = selectedTableNumber.text;
    timesSeven.text = selectedTableNumber.text;
    timesEight.text = selectedTableNumber.text;
    timesNine.text = selectedTableNumber.text;
    timesTen.text = selectedTableNumber.text;

    [selectedTableNumber setUserInteractionEnabled:NO];
    [selectedTableNumber setBackgroundColor:[UIColor yellowColor]];

    [self clearInputFields];
}

- (void)clearInputFields {
    answerOne.backgroundColor = [UIColor clearColor];
    answerTwo.backgroundColor = [UIColor clearColor];
    answerThree.backgroundColor = [UIColor clearColor];
    answerFour.backgroundColor = [UIColor clearColor];
    answerFive.backgroundColor = [UIColor clearColor];
    answerSix.backgroundColor = [UIColor clearColor];
    answerSeven.backgroundColor = [UIColor clearColor];
    answerEight.backgroundColor = [UIColor clearColor];
    answerNine.backgroundColor = [UIColor clearColor];
    answerTen.backgroundColor = [UIColor clearColor];

    answerOne.text = @"";
    answerTwo.text = @"";
    answerThree.text = @"";
    answerFour.text = @"";
    answerFive.text = @"";
    answerSix.text = @"";
    answerSeven.text = @"";
    answerEight.text = @"";
    answerNine.text = @"";
    answerTen.text = @"";

    answerOne.userInteractionEnabled = YES;
    answerTwo.userInteractionEnabled = YES;
    answerThree.userInteractionEnabled = YES;
    answerFour.userInteractionEnabled = YES;
    answerFive.userInteractionEnabled = YES;
    answerSix.userInteractionEnabled = YES;
    answerSeven.userInteractionEnabled = YES;
    answerEight.userInteractionEnabled = YES;
    answerNine.userInteractionEnabled = YES;
    answerTen.userInteractionEnabled = YES;


}

- (IBAction)checkInput:(id)sender {
    int numErrors = [self markAsCorrectOrNot:answerOne times:1];
    numErrors += [self markAsCorrectOrNot:answerTwo times:2];
    numErrors += [self markAsCorrectOrNot:answerThree times:3];
    numErrors += [self markAsCorrectOrNot:answerFour times:4];
    numErrors += [self markAsCorrectOrNot:answerFive times:5];
    numErrors += [self markAsCorrectOrNot:answerSix times:6];
    numErrors += [self markAsCorrectOrNot:answerSeven times:7];
    numErrors += [self markAsCorrectOrNot:answerEight times:8];
    numErrors += [self markAsCorrectOrNot:answerNine times:9];
    numErrors += [self markAsCorrectOrNot:answerTen times:10];
    if (numErrors == 0) {
        [selectedTableNumber setUserInteractionEnabled:YES];
        [selectedTableNumber setBackgroundColor:[UIColor clearColor]];
    }
}

- (int) markAsCorrectOrNot:(UITextField *) fieldToCheck times:(int)times {
    if (fieldToCheck.text.intValue == (times * selectedTableNumber.text.intValue)) {
        fieldToCheck.backgroundColor = [UIColor greenColor];
        [fieldToCheck setUserInteractionEnabled:NO];
        return 0;
    } else {
        return 1;
    }

}
@end
