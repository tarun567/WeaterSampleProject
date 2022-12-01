//
//  MainWeatherView.swift
//  LoginProject
//
//  Created by Tarun Chaudhary on 01/12/22.
//

import SwiftUI

struct MainWeatherView : View{
    
    var imageName : String
    var tmp : Int

    var body: some View {
        VStack (spacing:10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            Text("\(tmp)°")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal)
            
        }.padding(.bottom,80)
    }
    
}

