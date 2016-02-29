//
//  KoreanViewController.m
//  test
//
//  Created by Winston on 16/1/29.
//  Copyright © 2016年 Braum. All rights reserved.
//

#import "KoreanViewController.h"

@interface KoreanViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end


@implementation KoreanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"KoreaPronounce" ofType:@"swf"];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:path]];
    [self.webView loadData:data MIMEType:nil textEncodingName:nil baseURL:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
