//
//  InfoTextViewController.m
//  Baker
//
//  Created by Шаматов Иван on 02.03.14.
//
//

#import "InfoTextViewController.h"
#import "UIConstants.h"
#import "UIColor+Extensions.h"


@interface InfoTextViewController ()
{
    UITextView *_textView;
    NSString *_filename;
}
@end

@implementation InfoTextViewController

-(id) initWithTextFile:(NSString *)filename
{
    self = [super init];
    if (self) {
        _filename = filename;
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:_filename ofType:@"txt"];
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        CGRect textViewContainer = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        _textView = [[UITextView alloc] initWithFrame:textViewContainer];
        NSString *content = [NSString stringWithContentsOfFile:filePath
                                                      encoding:NSUTF8StringEncoding
                                                         error:nil];
        _textView.text = content;
        [self.view addSubview:_textView];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate
{
    _textView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    return YES;
}

@end
