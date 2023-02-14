//
//  AppDelegate.swift
//  BSK_FirstApp_map
//
//  Created by BS K on 2023/02/14.
//

import UIKit
import NaverThirdPartyLogin

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // MARK: 네이버 로그인
               let instance = NaverThirdPartyLoginConnection.getSharedInstance()
               // 네이버 앱으로 인증 방식 활성화
               instance?.isNaverAppOauthEnable = true
               // SafariViewController로 인증 방식 활성화
               instance?.isInAppOauthEnable = true
                // 아이폰에서 인증 화면을 세로모드에서만 적용
               instance?.isOnlyPortraitSupportedInIphone()
               
               // 미리 만들어두었던 URL Scheme
               instance?.serviceUrlScheme = kServiceAppUrlScheme
               // 등록한 애플리케이션의 Client ID
               instance?.consumerKey = kConsumerKey
               // 등록한 애플리케이션의 Client Secret
               instance?.consumerSecret = kConsumerSecret
               // 앱 이름
               instance?.appName = kServiceAppName
               // -> 위에서 상수 설정할 때 했던거임
               
        
        
        // Override point for customization after application launch.
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
            NaverThirdPartyLoginConnection.getSharedInstance().application(app, open: url, options: options)
            return true
        }
    
    
    // MARK: UISceneSession Lifecycle

//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

