#import <UIKit/UIKit.h>

%ctor {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

        UIWindow *window = nil;

        for (UIScene *scene in UIApplication.sharedApplication.connectedScenes) {
            if ([scene isKindOfClass:[UIWindowScene class]]) {
                UIWindowScene *windowScene = (UIWindowScene *)scene;
                window = windowScene.windows.firstObject;
                break;
            }
        }

        if (!window) return;

        UIAlertController *alert =
        [UIAlertController alertControllerWithTitle:@"🔥 Mahmutun Tweaki"
                                            message:@"Leps World'e başarıyla yüklendi!"
                                     preferredStyle:UIAlertControllerStyleAlert];

        [window.rootViewController presentViewController:alert animated:YES completion:nil];

        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [alert dismissViewControllerAnimated:YES completion:nil];
        });

    });
}
