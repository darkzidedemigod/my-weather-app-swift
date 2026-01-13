//
//  MyWeatherAppApp.swift
//  MyWeatherApp
//
//  Created by nestor on 1/9/26.
//

import SwiftUI
import CoreData

@main
struct MyWeatherAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
