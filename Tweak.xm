#import <UIKit/UIKit.h>

%hook UIApplication

- (void)applicationDidBecomeActive:(UIApplication *)application {
    %orig;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC),
                       dispatch_get_main_queue(), ^{

            UIViewController *root =
                UIApplication.sharedApplication.connectedScenes.allObjects.firstObject.windows.firstObject.rootViewController;

            UIAlertController *alert =
                [UIAlertController alertControllerWithTitle:@"🔥 Mahmutun Tweaki"
                                                    message:@"Leps World'e başarıyla enjekte edildi!"
                                             preferredStyle:UIAlertControllerStyleAlert];

            [root presentViewController:alert animated:YES completion:nil];

            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC),
                           dispatch_get_main_queue(), ^{
                [alert dismissViewControllerAnimated:YES completion:nil];
            });
        });
    });
}

%end
