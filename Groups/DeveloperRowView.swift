//
//  DeveloperRowView.swift
//  Groups
//
//  Created by venkata sudhakar on 03/06/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

let developers:[Developer] = [Developer(id: 1, name: "Venkata Sudhakar", skills: ["iOS","Java"]),Developer(id: 2, name: "Nagiri Lalitha", skills: ["Android","Python"]),Developer(id: 3, name: "Stali Reddy", skills: ["Node Js","Data sceince"]),Developer(id: 4, name: "Saathik", skills: ["Pega","Azure"]),Developer(id: 5, name: "Purushotam", skills: ["Oracle","swiftIU","React JS"])]

struct DeveloperRowView: View {
    let developer:Developer
    var body: some View {
        HStack(spacing:20) {
            Image(systemName: "\(developer.id).circle")
                .foregroundColor(.purple)
                .font(.largeTitle)
                .scaleEffect(1.5)

            VStack(alignment: .leading,spacing: 5) {
                Text(developer.name)
                    .font(.headline)
                    .shadow(color: .gray, radius: 1, x: 1, y: 1)
                Text("Skills: \(developer.skills.joined(separator: ","))")
                    .font(.subheadline)
            }
        }.padding()
    }
}
struct Developer:Identifiable {
    let id : Int
    let name: String
    let skills :[String]
}

struct DeveloperRowView_Previews: PreviewProvider {
    static var previews: some View {
        DeveloperRowView(developer: Developer(id: 1, name: "Venkata Sudhakar", skills: ["iOS","Java"]))
    }
}
