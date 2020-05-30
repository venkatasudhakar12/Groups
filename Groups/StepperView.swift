//
//  StepperView.swift
//  Groups
//
//  Created by venkata sudhakar on 29/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    @State private var items = 0
    var body: some View {
       ZStack{
               Color.purple
               .edgesIgnoringSafeArea(.all)
               Stepper("\(items) items", value: $items,in: 0...10,step: 2)
               .padding()
               

           }
           .font(.largeTitle)
             .foregroundColor(.white)
       }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
