//
//  Splash.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/15/20.
//

import SwiftUI

struct Splash: View {
  var body: some View {
    GeometryReader { geometry in
      ZStack {
        BackgroundRadial()
        Circles(fontSize: geometry.size.width * 0.18)
        .offset(
          x: -(geometry.size.width * 0.18),
          y: -(geometry.size.height * 0.10)
        )
        .frame(
          width: (geometry.size.width * 1.1),
          height: (geometry.size.width * 1.1))
        Text("A beautiful way to focus.")
          .kerning(2.9)
          .font(Theme.font(size: 39))
          .foregroundColor(Theme.yellow)
          .offset(x: 0, y: 300)
          .padding(74)
      }
    }
    .edgesIgnoringSafeArea(.all)
  }
}

struct Splash_Previews: PreviewProvider {
  static var previews: some View {
    previews(of: Splash())
  }
}
