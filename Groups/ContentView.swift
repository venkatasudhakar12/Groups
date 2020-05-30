//
//  ContentView.swift
//  Groups
//
//  Created by venkata sudhakar on 28/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    var body: some View{
        VStack{
            Button("Click me"){
                withAnimation {
                    self.enabled.toggle()
                }
                
            }
            if enabled {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 180, height: 180)
//                    .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SendButton:View {
    let onClick:()->Void = {}
    var body: some View {
        Button(action: onClick) {
            HStack{
                Image(systemName: "square.and.arrow.up")
                Text("send")
            }
        }
        
    }
}

struct GStack<Content:View> : View {
    let rows:Int
    let columns:Int
    let content:(Int,Int)->Content
    var body: some View {
        Text("")
    }
}
