//
//  WeatherButtonText.swift
//  SwiftUI_Weather
//
//  Created by Sarath Chandra Damineni on 2021-09-12.
//

import SwiftUI

struct ButtontTextView: View
{
    var buttonText: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View
    {
        Text(buttonText)
            .font(.system(size: 20, weight: .bold, design: .default))
            .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .frame(width: 280, height: 50)
            .cornerRadius(10)
    }
}
