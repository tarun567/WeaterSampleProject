//
//  RoundedCornerButton.swift
//  WeaterSampleProject
//
//  Created by Tarun Chaudhary on 01/12/22.
//

import SwiftUI

struct RoundedCornerButton: View {
    
    var title : String
    var backgroundcolor : Color
    var textColor : Color

    var body: some View {
            Text(title)
                .frame(width: 280, height: 50)
                .background(backgroundcolor)
                .foregroundColor(textColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(10)
            
            
        
    }
}

