//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

#import <LHSCategoryCollection/UIView+LHSAdditions.h>
#import <LHSTableViewCells/LHSTableViewCellSubtitle.h>
#import <LHSTableViewCells/LHSTableViewCellDefault.h>
#import <LHSTableViewCells/LHSTableViewCellValue1.h>
#import <LHSKeyboardAdjusting/UIViewController+LHSKeyboardAdjustment.h>

static NSString * const CellIdentifier = @"CellIdentifier";

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSLayoutConstraint *bottomConstraint;

- (ExampleSectionType)sectionTypeForSection:(NSInteger)section;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Title";
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[LHSTableViewCellDefault class] forCellReuseIdentifier:CellIdentifier];
#warning Uncomment for Auto Layout-based cell sizing. If you set up a AL view here, please set it up in viewDidLoad and don't forget to call updateConstraintsIfNeeded before adding it to the cell.
//    self.tableView.estimatedRowHeight = 44;
//    self.tableView.rowHeight = UITableViewAutomaticDimension;

    NSDictionary *views = @{@"top": self.topLayoutGuide,
                            @"table": self.tableView};
    
    [self.view addSubview:self.tableView];
    
    self.bottomConstraint = [NSLayoutConstraint constraintWithItem:self.tableView
                                                         attribute:NSLayoutAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self.bottomLayoutGuide
                                                         attribute:NSLayoutAttributeTop
                                                        multiplier:1
                                                          constant:0];
    
    [self.view addConstraint:self.bottomConstraint];
    [self.view lhs_addConstraints:@"V:[top][table]" views:views];
    [self.tableView lhs_fillWidthOfSuperview];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self lhs_activateKeyboardAdjustment];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self lhs_deactivateKeyboardAdjustment];
}

#pragma mark - LHSKeyboardAdjusting

- (NSLayoutConstraint *)keyboardAdjustingBottomConstraint {
    return self.bottomConstraint;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return ExampleSectionCount;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    ExampleSectionType sectionType = [self sectionTypeForSection:section];
    switch (sectionType) {
        case ExampleSection1:
            return 1;
            
        case ExampleSection2:
            return 1;
    }
}

#warning Uncomment to specify cell heights explicitly (as opposed to using Auto Layout)
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    switch ((ExampleRowType)indexPath.row) {
//        case ExampleRow1:
//            return 44;
//            
//        case ExampleRow2:
//            return 20;
//            
//        case ExampleRow3:
//            return 60;
//    }
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    ExampleSectionType sectionType = [self sectionTypeForSection:indexPath.section];
    switch (sectionType) {
        case ExampleSection1:
            break;
            
        case ExampleSection2:
            break;
    }
    
    switch ((ExampleRowType)indexPath.row) {
        case ExampleRow1:
            break;

        case ExampleRow2:
            break;

        case ExampleRow3:
            break;
    }

    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    ExampleSectionType sectionType = [self sectionTypeForSection:section];
    switch (sectionType) {
        case ExampleSection1:
            break;
            
        case ExampleSection2:
            break;
    }
    
    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    ExampleSectionType sectionType = [self sectionTypeForSection:section];
    switch (sectionType) {
        case ExampleSection1:
            break;
            
        case ExampleSection2:
            break;
    }
    
    return nil;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

#pragma mark - Other

- (ExampleSectionType)sectionTypeForSection:(NSInteger)section {
    return section;
}

@end
