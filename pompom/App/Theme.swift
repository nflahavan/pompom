//
//  Theme.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/15/20.
//

import SwiftUI

enum Theme {
  static let blue: Color = .init("blue_theme")
  static let red: Color = .init("red_theme")
  static let green: Color = .init("green_theme")
  static let yellow: Color = .init("yellow_theme")

  static func font(size: CGFloat) -> Font {
    .custom("Cocon-Regular", size: size)
  }
}
