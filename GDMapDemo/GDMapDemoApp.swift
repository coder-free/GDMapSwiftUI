//
//  GDMapDemoApp.swift
//  GDMapDemo
//
//  Created by zbf on 5/29/23.
//

import SwiftUI
import AMapFoundationKit

@main
struct GDMapDemoApp: App {
    init() {
        AMapServices.shared().enableHTTPS = true
        AMapServices.shared().apiKey = "xxxx"
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
