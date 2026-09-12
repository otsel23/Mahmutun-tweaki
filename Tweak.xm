#import <UIKit/UIKit.h>

%hook UIViewController

- (void)viewDidAppear:(BOOL)animated {
    %orig;
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Selam" message:@"Mahmut'un ilk tweak'i!" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}

%end
