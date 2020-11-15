//
//  Background.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/14/20.
//

import SwiftUI

struct Background: View {
  var body: some View {
    VStack {
      LinearGradient(
        gradient: Gradient(colors: [.black, Theme.blue]),
        startPoint: UnitPoint(x: UnitPoint.top.x, y: UnitPoint.top.y - 1),
        endPoint: .center
      )
      LinearGradient(
        gradient: Gradient(colors: [.black, Theme.blue]),
        startPoint: UnitPoint(x: UnitPoint.bottom.x, y: UnitPoint.bottom.y + 1),
        endPoint: .center
      )

    }
    .background(Theme.blue)
    .edgesIgnoringSafeArea(.all)
  }
}

struct Background_Previews: PreviewProvider {
  static var previews: some View {
    previews(of: Background())
  }
}
