//
//  WeatherButton.swift
//  Weather Outfit
//
//  Created by zchagra.dev on 29/11/2022.
//

import SwiftUI

struct WeatherButton: View {
    var label:String
    var bgColor:Color
    var txtColor:Color
    
    var body: some View {
        Button{
            print("tapped")
        } label: {
            Text(label)
                .frame(width: 280,height: 50)
                .background(bgColor).font(.system(size:20, weight: .bold, design:.default))
                .foregroundColor(txtColor)
                .cornerRadius(10)
        }
    }
}
