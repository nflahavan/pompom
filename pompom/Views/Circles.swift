//
//  Circles.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/15/20.
//

import SwiftUI

struct Circles: View {
  let fontSize: CGFloat
  let frameName: AnyHashable
  
  var body: some View {
    VStack {
      Text("pom")
        .foregroundColor(Theme.blue)
        .font(Theme.font(size: fontSize))
        .offset(x: -fontSize * 0.125, y: fontSize * 0.25)
      Text("pom")
        .foregroundColor(Theme.red)
        .font(Theme.font(size: fontSize))
        .offset(x: fontSize * 0.125, y: -fontSize * 0.25)
    }
    .background(
      ZStack {
        Circle()
          .scale(2.7)
          .foregroundColor(Theme.red)
          .shadow(color: .black, radius: 7)
        Circle()
          .scale(2.1)
          .foregroundColor(Theme.green)
          .shadow(color: .black, radius: 7)
        Circle()
          .scale(1.5)
          .foregroundColor(Theme.yellow)
          .shadow(color: .black, radius: 7)
      }
    )
    .preference(
      key: CirclesPreferenceKey.self,
      value: CirclesPreferenceData(
        offset: -fontSize * 0.125
      )
    )
  }
}

struct CirclesPreferenceKey: PreferenceKey {
  typealias Value = CirclesPreferenceData
  
  static var defaultValue: CirclesPreferenceData = .init(offset: .zero)
  
  static func reduce(value: inout CirclesPreferenceData, nextValue: () -> CirclesPreferenceData) {
    value = nextValue()
  }
}

struct CirclesPreferenceData: Equatable {
  let offset: CGFloat
}

struct Circles_Previews: PreviewProvider {
  static var previews: some View {
    previews(of: Circles(fontSize: 80, frameName: "previews"))
  }
}
