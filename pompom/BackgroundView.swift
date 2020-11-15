//
//  BackgroundView.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/14/20.
//

import SwiftUI

struct BackgroundView: View {
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

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    previews(of: BackgroundView())
  }
}
