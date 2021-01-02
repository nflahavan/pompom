//
//  BackgroundLinear.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/14/20.
//

import SwiftUI

struct BackgroundLinear: View {
  var body: some View {
    ZStack {
      VStack {
        LinearGradient(
          gradient: Gradient(colors: [.black, .clear]),
          startPoint: UnitPoint(x: UnitPoint.top.x, y: UnitPoint.top.y - 1),
          endPoint: .center
        )
        LinearGradient(
          gradient: Gradient(colors: [.black, .clear]),
          startPoint: UnitPoint(x: UnitPoint.bottom.x, y: UnitPoint.bottom.y + 1),
          endPoint: .center
        )
      }
    }
    .background(Theme.blue)
  }
}

struct BackgroundLinear_Previews: PreviewProvider {
  static var previews: some View {
    previews(of: BackgroundLinear())
  }
}
