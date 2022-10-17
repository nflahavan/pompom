//
//  FocusView.swift
//  pompom
//
//  Created by Nik Flahavan on 12/23/20.
//

import SwiftUI

struct FocusView: View {
  var body: some View {
    ZStack {
      VStack {
        Text("focus.")
          .kerning(2.9)
          .font(Theme.font(size: 32))
          .foregroundColor(Theme.yellow)
        Spacer()
        Text("25:00")
          .kerning(2.9)
          .font(Theme.font(size: 32))
          .foregroundColor(Theme.yellow)
        Spacer()
        HStack {
          Button("play") {
            UNUserNotificationCenter
              .current()
              .requestAuthorization(
                options: .provisional
              ) { isAuthorized, error in
                print("isAuthorized \(isAuthorized) error \(error)")
                
                let content = UNMutableNotificationContent()
                content.title = "HI NIK"
                content.body = "HI NIK"
                content.subtitle = "HI NIK"
                
                let request2 = UNNotificationRequest(
                  identifier: "\(UUID().uuidString)",
                  content: content,
                  trigger: UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false))
                UNUserNotificationCenter
                  .current()
                  .add(request2) { error in
                    print("error \(error)")
                  }
              }
          }
          Button("pause") {
            
          }
          Button("stop") {
            
          }
        }
        HStack {
          Spacer()
          Button("?") {
            
          }
          Button("gear") {
            
          }
        }
      }
    }
  }
}

struct FocusView_Previews: PreviewProvider {
  static var previews: some View {
    previews(
      of: FocusView()
        .background(BackgroundRadial().ignoresSafeArea())
    )
  }
}
