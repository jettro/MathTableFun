//
//  GSViewController.h
//  MathTableFun
//
//  Created by Jettro Coenradie on 9/6/12.
//  Copyright (c) 2012 Jettro Coenradie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSViewController : UIViewController {
    __weak IBOutlet UITextField *selectedTableNumber;

    __weak IBOutlet UILabel *timesOne;
    __weak IBOutlet UILabel *timesTwo;
    __weak IBOutlet UILabel *timesThree;
    __weak IBOutlet UILabel *timesFour;
    __weak IBOutlet UILabel *timesFive;
    __weak IBOutlet UILabel *timesSix;
    __weak IBOutlet UILabel *timesSeven;
    __weak IBOutlet UILabel *timesEight;
    __weak IBOutlet UILabel *timesNine;
    __weak IBOutlet UILabel *timesTen;


    __weak IBOutlet UITextField *answerOne;
    __weak IBOutlet UITextField *answerTwo;
    __weak IBOutlet UITextField *answerThree;
    __weak IBOutlet UITextField *answerFour;
    __weak IBOutlet UITextField *answerFive;
    __weak IBOutlet UITextField *answerSix;
    __weak IBOutlet UITextField *answerSeven;
    __weak IBOutlet UITextField *answerEight;
    __weak IBOutlet UITextField *answerNine;
    __weak IBOutlet UITextField *answerTen;
}

- (IBAction) changeTableAction:(id) sender;

- (IBAction) checkInput:(id) sender;

@end
