//
//  ContextMenu.swift
//  Groups
//
//  Created by venkata sudhakar on 28/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
          HStack {
                  Text("Action")
                      .font(.title)
                      .contextMenu {
                          Button(action: {}) {
                              Text("Share")
                              Image(systemName: "square.and.arrow.up")
                          }
                          Button(action: {}) {
                              Image(systemName: "heart.fill")
                              Text("Favorite")
                          }
                  }
              }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
