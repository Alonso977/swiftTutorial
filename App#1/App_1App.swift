//
//  App_1App.swift
//  App#1
//
//  Created by Alonso Alas on 17/8/22.
//

import SwiftUI

@main
struct App_1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//            App_3()
//            HomeFruit()
            App_5()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
