//
//  My_ImagesApp.swift
//  My Images
//
//  Created by dsm 5e on 27.05.2023.
//

import SwiftUI

@main
struct My_ImagesApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView()
                    .environmentObject(ViewModel())
                    .onAppear {
                        UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                    }
            }
        }
    }
}
