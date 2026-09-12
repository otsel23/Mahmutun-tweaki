#import <UIKit/UIKit.h>

%hook UIApplication

- (void)applicationDidBecomeActive:(UIApplication *)application {
    %orig;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)),
                       dispatch_get_main_queue(), ^{

            UIWindow *window = UIApplication.sharedApplication.windows.firstObject;
            if (!window) return;

            UIAlertController *alert =
                [UIAlertController alertControllerWithTitle:@"🔥 Mahmutun Tweaki"
                                                    message:@"Leps World'e başarıyla enjekte edildi!"
                                             preferredStyle:UIAlertControllerStyleAlert];

            [window.rootViewController presentViewController:alert animated:YES completion:nil];

            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)),
                           dispatch_get_main_queue(), ^{
                [alert dismissViewControllerAnimated:YES completion:nil];
            });
        });
    });
}

%end
