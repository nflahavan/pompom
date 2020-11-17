//
//  BackgroundRadial.swift
//  pompom
//
//  Created by Niklas Flahavan on 11/14/20.
//

import SwiftUI

struct BackgroundRadial: View {
  var body: some View {
    ZStack {
      RadialGradient(
        gradient: Gradient(colors: [.clear, .black]),
        center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
        startRadius: 0,
        endRadius: 1000
      )
    }
    .background(Theme.blue)
  }
}

struct BackgroundRadial_Previews: PreviewProvider {
  static var previews: some View {
    previews(of: BackgroundRadial())
  }
}
