//
//  Animation6.swift
//  Groups
//
//  Created by venkata sudhakar on 29/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct Animation6: View {
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

struct Animation6_Previews: PreviewProvider {
    static var previews: some View {
        Animation6()
    }
}
