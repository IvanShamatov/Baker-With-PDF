//
//  InfoTableViewController.h
//  Baker
//
//  Created by Шаматов Иван on 13.03.14.
//
//

@protocol InfoTableViewControllerDelegate <NSObject>

- (void)infoTableViewControllerDelegateDismissAnimated:(BOOL)animated;
- (void)infoTableViewControllerDelegatePushViewWithFile:(NSString *)file;

@end

@interface InfoTableViewController : UITableViewController
@property (weak) id <InfoTableViewControllerDelegate> delegate;
@end