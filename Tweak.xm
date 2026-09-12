#import <UIKit/UIKit.h>

__attribute__((constructor))
static void MahmutInit() {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alert =
            [UIAlertController alertControllerWithTitle:@"😈 Mahmut'un Tweak'i"
                                                message:@"Merhaba Mahmut!"
                                         preferredStyle:UIAlertControllerStyleAlert];

        UIViewController *root =
            UIApplication.sharedApplication.connectedScenes.allObjects.firstObject.windows.firstObject.rootViewController;

        if (root) {
            [root presentViewController:alert animated:YES completion:nil];
        }
    });
}
