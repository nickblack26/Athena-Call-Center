//
//  Athena_Call_CenterApp.swift
//  Athena Call Center
//
//  Created by Nick Black on 7/23/24.
//

import SwiftUI
import SimpleToast

@main
struct Athena_Call_CenterApp: App {
    @State private var showCallUI = false
    
    private let toastOptions = SimpleToastOptions(
        alignment: .bottomTrailing,
        hideAfter: 5,
        animation: .snappy,
        modifierType: .slide,
        dismissOnTap: false
    )
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
