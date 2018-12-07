//
//  AppDelegate.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/21/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

import OneSignal

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let actioni : OSNotificationAction = OSNotificationAction()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
//        let tabBar = storyBoard.instantiateViewController(withIdentifier: "lajmet1")
//            as? UINavigationController
//
//
//        self.window?.rootViewController = tabBar
//        self.window?.makeKeyAndVisible()
//        if let notification = launchOptions?[.remoteNotification] as? [String: AnyObject] {
//            // 2
//            let aps = notification["aps"] as! [String: AnyObject]
//            let vc = storyBoard.instantiateViewController(withIdentifier: "lajmet1") as? SelectedNewsViewController
//            tabBar?.pushViewController(vc!, animated: true)
//
//        }

        let notificationOpenedBlock: OSHandleNotificationActionBlock = { result in
            // This block gets called when the user reacts to a notification received
            let payload: OSNotificationPayload? = result?.notification.payload
            
          
            
            if let additionalData = result!.notification.payload!.additionalData {
                
            
                
                // DEEP LINK from action buttons
                
                    if let actionID = result?.action.actionID {
                    // For presenting a ViewController from push notification action button
                    let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let instantiateRedViewController : UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "lajmet1")
                    
                    self.window = UIWindow(frame: UIScreen.main.bounds)
                self.window?.rootViewController = instantiateRedViewController
                self.window?.makeKeyAndVisible()
                }
            }
        }
        
       
        
        
        let onesignalInitSettings = [kOSSettingsKeyAutoPrompt: false]
        //[OneSignal setLogLevel:ONE_S_LL_DEBUG visualLevel:ONE_S_LL_DEBUG];
        // Replace 'YOUR_APP_ID' with your OneSignal App ID.
        OneSignal.initWithLaunchOptions(launchOptions,
                                        appId: "e7948129-af16-49f7-9980-16bc86003b70",
                                        handleNotificationAction: nil,
                                        settings: onesignalInitSettings)

        OneSignal.inFocusDisplayType = OSNotificationDisplayType.notification;
//        OSHandleNotificationActionBlock {
//            result in
//
//            // This block gets called when the user reacts to a notification received
//            let payload: OSNotificationPayload = result!.notification.payload
//            var fullMessage = payload.body
//
//            //Try to fetch the action selected
//            if let additi onalData = payload.additionalData, let actionSelected = additionalData["actionSelected"] as? String {
//                fullMessage =  fullMessage + "\nPressed ButtonId:\(actionSelected)"
//            }
//            print("fullMessage = \(fullMessage)")
//        }
        // Recommend moving the below line to prompt for push after informing the user about
        //   how your app will use them.
        OneSignal.promptForPushNotifications(userResponse: { accepted in
            print("User accepted notifications: \(accepted)")
        })
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}


