//
//  ProgressView.swift
//  Groups
//
//  Created by venkata sudhakar on 28/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct ProgressView: View {
     @State private var progress:CGFloat = 0.1
    var body: some View {
              VStack{
            HStack {
                Text("0%")
                Slider(value: $progress)
                Text("100%")
            }.padding()
            ZStack {
                Circle()
                    .stroke(Color.gray, lineWidth: 20)
                    .opacity(0.2)
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color.red, lineWidth: 20)
                    .rotationEffect(Angle(degrees: -90))
                .overlay(
                Text("\(Int(progress*100))%")
                    .font(.system(size: 50))
                )
            }.padding()
            .frame(height:300)
            Spacer()
        }

    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
