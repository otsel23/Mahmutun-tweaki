%hook UIApplication

- (void)applicationDidBecomeActive:(UIApplication *)application {

    %orig;

    UIWindowScene *scene = (UIWindowScene *)UIApplication.sharedApplication.connectedScenes.allObjects.firstObject;
    UIWindow *window = scene.windows.firstObject;

    UIAlertController *alert =
        [UIAlertController alertControllerWithTitle:@"🔥 Mahmutun Tweaki"
                                            message:@"Leps World'e başarıyla enjekte edildi!"
                                     preferredStyle:UIAlertControllerStyleAlert];

    [window.rootViewController presentViewController:alert animated:YES completion:nil];
}

%end
