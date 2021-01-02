//
//  Splash.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/15/20.
//

import SwiftUI

struct Splash: View {
  @State private var circlesOffset: CGFloat = .zero

  var body: some View {
    GeometryReader { geometry in
      VStack(alignment: .leading) {
        Spacer(minLength: geometry.size.height * 0.25)
        Circles(fontSize: geometry.size.width * 0.18, frameName: "Splash")
          .onPreferenceChange(CirclesPreferenceKey.self) { preferenceData in
            circlesOffset = preferenceData.offset
          }
        Spacer(minLength: geometry.size.height * 0.3)
        Text("A beautiful\nway to focus.")
          .kerning(2.9)
          .font(Theme.font(size: 32))
          .foregroundColor(Theme.yellow)
          .offset(x: circlesOffset, y: 0)
        Spacer()
      }
    }
    .padding(.leading, 40)
    .coordinateSpace(name: "Splash")
  }
}

struct Splash_Previews: PreviewProvider {
  static var previews: some View {
    previews(of: Splash())
  }
}
