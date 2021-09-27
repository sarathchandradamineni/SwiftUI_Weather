 //
//  ContentView.swift
//  SwiftUI_Weather
//
//  Created by Sarath Chan dra Damineni on 2021-08-24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack{
                CityTextView(cityName: "Tranås, Sweden")
                WeatherInfoView(weatherImageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                temperature: isNight ? "14°" : "21°")
                .padding(.bottom,40)
                
                Spacer()
                
                HStack(spacing: 30){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 22)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 28)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 14)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "tornado",
                                   temperature: 22)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.rain.fill",
                                   temperature: 18)
                }
                
                Spacer()
                
                Button{
                    isNight.toggle()
                }
                label : {
                    ButtontTextView(buttonText: "Change Date Time", textColor: .blue, backgroundColor: .white)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
 struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack{
            Text("\(dayOfWeek)")
                .font(.system(size: 21, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temperature)")
                .font(.system(size: 25, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
 }
 
 
 struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(
            gradient:
                Gradient(colors: [isNight ? .black : .blue,
                                  isNight ? Color("lightBlack") : Color("lightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
 }
 
 struct CityTextView: View {
    var cityName: String
    var body: some View{
        Text("\(cityName)")
            .font(.system(size: 32, weight: .bold, design: .default))
            .foregroundColor(.white)
            .padding()
    }
 }
 
 struct WeatherInfoView: View{
    var weatherImageName: String
    var temperature: String
    
    var body: some View{
        VStack(spacing:8){
            Image(
                systemName: weatherImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
 }



 
 
