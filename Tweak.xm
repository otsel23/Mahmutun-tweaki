#import <UIKit/UIKit.h>

%hook UIApplication

- (void)applicationDidBecomeActive:(UIApplication *)application {
    %orig;

    static BOOL shown = NO;
    if (shown) return;
    shown = YES;

    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alert =
        [UIAlertController alertControllerWithTitle:@"🔥 Mahmutun Tweaki"
                                            message:@"Leps World'e başarıyla enjekte edildi!"
                                     preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *ok =
        [UIAlertAction actionWithTitle:@"Tamam"
                                 style:UIAlertActionStyleDefault
                               handler:nil];

        [alert addAction:ok];

        UIViewController *root =
            UIApplication.sharedApplication.keyWindow.rootViewController;

        [root presentViewController:alert animated:YES completion:nil];
    });
}

%end
