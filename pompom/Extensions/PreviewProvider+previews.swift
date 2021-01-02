//
//  PreviewProvider+previews.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/15/20.
//

import SwiftUI

extension PreviewProvider {
  @ViewBuilder
  static func previews<T: View>(of view: T) -> some View {
    view
      .previewDevice("iPhone SE (2nd generation)")
    view
      .previewDevice("iPhone 12 mini")
    view
      .previewDevice("iPhone 12 Pro")
    view
      .previewDevice("iPhone 12 Pro Max")
  }
}
