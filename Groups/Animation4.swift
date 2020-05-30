//
//  Animation4.swift
//  Groups
//
//  Created by venkata sudhakar on 29/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct Animation4: View {
    @State private var enabled = false
    var body: some View{
        Button("Click me"){
            self.enabled.toggle()
        }
        .frame(width: 180, height: 180)
        .background(enabled ? Color.blue : Color.red)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.default)
        
    }
}

struct Animation4_Previews: PreviewProvider {
    static var previews: some View {
        Animation4()
    }
}
