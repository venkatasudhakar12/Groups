//
//  DevelopersView.swift
//  Groups
//
//  Created by venkata sudhakar on 03/06/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct DevelopersView: View {
    var body: some View{
        NavigationView{
            List(developers){ developer in
                NavigationLink(destination: Text(developer.name)) {
                     DeveloperRowView(developer: developer)
                }
               
            }
        .navigationBarTitle("Developers")
        }
        
    }
}

struct DevelopersView_Previews: PreviewProvider {
    static var previews: some View {
        DevelopersView()
    }
}
