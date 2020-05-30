//
//  FormView.swift
//  Groups
//
//  Created by venkata sudhakar on 28/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct FormView: View {
    @State private var amount = ""
       @State private var products = 1
       @State private var discount  = 0
       let discounts = [0,10,20,30,40,50]

       var totalPerProduct:Int {
           let amout = Int(amount) ?? 0
           let total = amout*products
           let per = (total/100)*discounts[discount]
           return total - per
       }
       var body: some View {
           NavigationView{
               Form{
                   TextField("Amount", text: $amount)
                       .keyboardType(.decimalPad)
                   Picker("Number of products", selection: $products) {
                       ForEach(1..<10){
                           Text("\($0) products")
                       }
                   }
                   Section(header:Text("select how much discount you want")){
                       Picker("Discount", selection: $discount) {
                           ForEach(0..<discounts.count) {
                               Text("\(self.discounts[$0])%").tag(1)
                           }
                       }
                   .pickerStyle(SegmentedPickerStyle())
                   }
                   Section{
                       Text("$ \(totalPerProduct    )")
                       Text("discount :\(discount)")
                   }
               }
           }
       }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
