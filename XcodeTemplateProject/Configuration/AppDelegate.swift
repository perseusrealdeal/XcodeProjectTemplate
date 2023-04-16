//
//  AppDelegate.swift
//  XcodeTemplateProject
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 Mikhail Zhigulin of Novosibirsk.
//
//  Licensed under the special license. See LICENSE file.
//  All rights reserved.
//

import UIKit

// MARK: - The Business Matter Application Delegate

class AppDelegate: UIResponder { var window: UIWindow? }

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        log.message("Launching with business matter purpose", .info)
        log.message("[\(type(of: self))].\(#function)")

        // Settings bundle

        UserPreferences.setBuildNumber()
        UserPreferences.setVersionNumber()

        UserPreferences.registerSettingsBundle(with: Settings.bundleParams)

        // First screen

        window = UIWindow(frame: UIScreen.main.bounds)

        #if false
        // window!.rootViewController = ViewController()
        #else
        window!.rootViewController = MainViewController.storyboardInstance()
        #endif

        window!.makeKeyAndVisible()

        AppearanceService.makeUp()

        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {

        log.message("[\(type(of: self))].\(#function)")

        // Update Dark Mode from Settings
        if let choice = isDarkModeSettingsChanged() {
            // Change Dark Mode value in Perseus Dark Mode library
            AppearanceService.DarkModeUserChoice = choice
            // Update appearance in accoring with changed Dark Mode Style
            AppearanceService.makeUp()
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        log.message("[\(type(of: self))].\(#function)")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        log.message("[\(type(of: self))].\(#function)")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        log.message("[\(type(of: self))].\(#function)")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        log.message("[\(type(of: self))].\(#function)")
    }
}
