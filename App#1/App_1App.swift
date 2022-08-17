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
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
