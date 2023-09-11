//
//  FructusApp.swift
//  Fructus
//
//  Created by Jotno on 9/10/23.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnboardingView()
            }else {
                ContentView()
            }
            
        }
    }
}
