//
// Created by jcoenradie on 9/16/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface TableSelectorUtility : UIViewController
+ (void)selectTableFromControllerUsingSegue:(UIStoryboardSegue *)segue withName:(NSString *)nameOfSegue intoLabel:(UILabel *)label;

+ (void)selectTableFromControllerUsingSegue:(UIStoryboardSegue *)segue withName:(NSString *)nameOfSegue intoLabel:(UILabel *)label withBlock:(void (^)(void))block;
@end