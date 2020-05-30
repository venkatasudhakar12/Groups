//
//  Animation3.swift
//  Groups
//
//  Created by venkata sudhakar on 29/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct Animation3: View {
    @State private var animationAmount = 0.0
    var body: some View{
        Button("Click me"){
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
            
        }
        .padding(40)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0 , y: 1, z: 0))
        
    }
    
}

struct Animation3_Previews: PreviewProvider {
    static var previews: some View {
        Animation3()
    }
}
