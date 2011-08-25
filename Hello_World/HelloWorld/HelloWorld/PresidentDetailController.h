//
//  PresidentDetailController.h
//  Nav
//
//  Created by Roman Melnyk on 02.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@class President;
#define kNumberOfEditableRows 4
#define kNameRowIndex         0
#define kFromYearIndex        1
#define kToYearIndex          2
#define kPartyIndex           3

#define kLabelTag             4096


@interface PresidentDetailController : UITableViewController <UITextFieldDelegate>
{
    President *president;
    NSArray *fieldLabels;
    NSMutableDictionary *tempValues;
    UITextField *textFieldBeingEdited;
}
@property (nonatomic, retain) President *president;
@property (nonatomic, retain) NSArray *fieldLabels;
@property (nonatomic, retain) NSMutableDictionary *tempValues;
@property (nonatomic, retain) UITextField *textFieldBeingEdited;

-(IBAction)cancel:(id)sender;
-(IBAction)save:(id)sender;
-(IBAction)textFieldDone:(id)sender;

@end
