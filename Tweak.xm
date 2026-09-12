#import <UIKit/UIKit.h>

__attribute__((constructor))
static void MahmutTweakInit() {

    dispatch_async(dispatch_get_main_queue(), ^{

        UIWindow *window = UIApplication.sharedApplication.windows.firstObject;
        UIViewController *root = window.rootViewController;

        if (!root) return;

        UIAlertController *alert =
        [UIAlertController alertControllerWithTitle:@"😈 Mahmut'un Tweak'i"
                                            message:@"Lep's World açıldı!"
                                     preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *ok =
        [UIAlertAction actionWithTitle:@"Devam"
                                 style:UIAlertActionStyleDefault
                               handler:nil];

        [alert addAction:ok];

        [root presentViewController:alert animated:YES completion:nil];

    });

}
