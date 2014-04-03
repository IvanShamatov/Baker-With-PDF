//
//  InfoTableViewController.m
//  Baker
//
//  Created by Шаматов Иван on 13.03.14.
//
//

#import "InfoTableViewController.h"

@interface InfoTableViewController ()
{
    NSArray *names;
    NSArray *files;
}
@end

@implementation InfoTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    names = @[@"Terms of Subscription",
              @"Terms and Conditions of Usage",
              @"Privacy Policy"];
    files = @[@"TermsOfSubscription",
              @"TermsAndConditions",
              @"PrivacyPolicy"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return names.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = names[indexPath.section];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_delegate infoTableViewControllerDelegateDismissAnimated:NO];
    [_delegate infoTableViewControllerDelegatePushViewWithFile:files[indexPath.section]];

}


@end
