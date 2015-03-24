//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

___IMPORTHEADER_cocoaTouchSubclass___

#import <LHSKeyboardAdjusting/LHSKeyboardAdjusting.h>

#warning Rename these typedefs! Best to use Xcode's refactor / rename tool.

typedef NS_ENUM(NSInteger, ExampleSectionType) {
    ExampleSection1,
    ExampleSection2,
};

typedef NS_ENUM(NSInteger, ExampleRowType) {
    ExampleRow1,
    ExampleRow2,
    ExampleRow3,
};

#warning And rename these too.

static NSInteger const ExampleCount = ExampleRow3 + 1;
static NSInteger const ExampleSectionCount = ExampleSection2 + 1;

@interface ___FILEBASENAMEASIDENTIFIER___ : UIViewController <LHSKeyboardAdjusting, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>

@end
