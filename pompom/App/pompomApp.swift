//
//  pompomApp.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/14/20.
//

import SwiftUI

@main
struct pompomApp: App {
  
  @State private var showSplash = true
  private var splashTimer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
  
  var body: some Scene {
    WindowGroup {
      if showSplash {
        Splash()
          .background(BackgroundRadial().ignoresSafeArea())
          .onReceive(splashTimer, perform: { input in
            showSplash = false
          })
      } else {
        FocusView()
      }
    }
  }
}
