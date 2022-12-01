//
//  DetailView.swift
//  LoginProject
//
//  Created by Tarun Chaudhary on 01/12/22.
//

import SwiftUI


struct DetailView : View {
    var body: some View {
        VStack {
            Text("Hello World")
            Button(action: {
                //go to another view
            }) {
                Text("Do Something")
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
            }
        }
    }
}


