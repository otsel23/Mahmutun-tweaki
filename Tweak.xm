UIWindow *window = nil;

for (UIScene *scene in UIApplication.sharedApplication.connectedScenes) {
    if ([scene isKindOfClass:[UIWindowScene class]]) {
        UIWindowScene *windowScene = (UIWindowScene *)scene;
        window = windowScene.windows.firstObject;
        break;
    }
}

if (!window) return;

UIViewController *root = window.rootViewController;
