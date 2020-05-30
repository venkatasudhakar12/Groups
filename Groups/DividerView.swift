//
//  DividerView.swift
//  Groups
//
//  Created by venkata sudhakar on 28/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
       VStack(spacing:30){
                  Group {
                      Text("Welcome to SwiftUI")
                      Divider()
                      Image(systemName: "1.circle")
                      Divider()
                  }
                  Group{
                      Text("Good morning")
                      HStack{
                          Divider()
                          Image(systemName: "2.circle")
                          Divider()
                      }.frame(height:100)
                  }
                  Group{
                      Text("Have a nice day")
                      Image(systemName: "3.circle")
                      Divider()
                          .background(Color.red)
                      Text("Happy birthday")
                      Image(systemName: "4.circle")
                      Divider()
                          .frame(width:100)
                  }
              }
              
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
