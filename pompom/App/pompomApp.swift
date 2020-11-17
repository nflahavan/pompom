//
//  pompomApp.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/14/20.
//

import SwiftUI

@main
struct pompomApp: App {
  init() {
    for family in UIFont.familyNames.sorted() {
        let names = UIFont.fontNames(forFamilyName: family)
        print("Family: \(family) Font names: \(names)")
    }
  }

  var body: some Scene {
    WindowGroup {
      Splash()
    }
  }
}
