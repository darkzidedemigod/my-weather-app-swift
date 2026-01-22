//
//  MyWeatherAppApp.swift
//  MyWeatherApp
//
//  Created by nestor on 1/9/26.
//

import SwiftUI
import UIKit
//import CoreData

@main
struct MyWeatherAppApp: App {
    //let persistenceController = PersistenceController.shared
    @StateObject var colorSchemeManager = ColorSchemeManager()
    @StateObject var locationManager = LocationManager()

    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: WeatherViewModel(weather: previewData))
                .environmentObject(colorSchemeManager)
                .environmentObject(LocationManager())
            //ContentView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
