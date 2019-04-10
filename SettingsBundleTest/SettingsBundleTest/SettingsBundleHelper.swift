//
//  SettingsBundleHelper.swift
//  SettingsBundleTest
//
//  Created by Kananat Suwanviwatana on 2019/04/10.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import Foundation

final class SettingsBundleHelper {
    
    struct Key {
        static let reset = "SETTINGS_BUNDLE_RESET"
        static let build = "SETTINGS_BUNDLE_BUILD"
        static let version = "SETTINGS_BUNDLE_VERSION"
    }
    
    static func checkAndExecuteSettings() {
        print("ktr 1", UserDefaults.standard.bool(forKey: Key.reset))
        if UserDefaults.standard.bool(forKey: Key.reset) {
            print("ktr 2")
            //UserDefaults.standard.set(false, forKey: Key.reset)
            /*
            if let appDomain = Bundle.main.bundleIdentifier {
                UserDefaults.standard.removePersistentDomain(forName: appDomain)
            }
*/
            // reset userDefaults..
            // CoreDataDataModel().deleteAllData()
            // delete all other user data here..
        }
    }
    
    static func setVersionAndBuildNumber() {
        print("ktr 3")
        let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
        UserDefaults.standard.set(version, forKey: Key.version)
        let build = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
        UserDefaults.standard.set(build, forKey: Key.build)
    }
}
