//
//  Animation1.swift
//  Groups
//
//  Created by venkata sudhakar on 29/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct Animation1: View {
    @State private var scaleValue:CGFloat = 1
    var body: some View{
        Button("Click me"){
            self.scaleValue += 1
        }
        .padding(40)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.green,lineWidth: 2)
                .scaleEffect(scaleValue)
                .opacity(Double(2-scaleValue))
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false))
            
        )
        
    }
}

struct Animation1_Previews: PreviewProvider {
    static var previews: some View {
        Animation1()
    }
}
