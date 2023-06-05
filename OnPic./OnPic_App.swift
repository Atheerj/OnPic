//
//  OnPic_App.swift
//  OnPic.
//
//  Created by ashwaq almuzaini on 02/08/1444 AH.
//

import SwiftUI

@main
struct OnPic_App: App {
    //    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
            //                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            //        }
        }
    }
}
