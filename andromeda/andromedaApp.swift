//
//  andromedaApp.swift
//  andromeda
//
//  Created by Softcent on 29/10/22.
//

import SwiftUI

@main
struct andromedaApp: App {
  init() {
    #if DEBUG
    Bundle(path: "/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle")?.load()
    #endif
  }

  var body: some Scene {
    WindowGroup {
      DemoView()
    }
  }
}
