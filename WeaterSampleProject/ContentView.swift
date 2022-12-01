//
//  ContentView.swift
//  WeaterSampleProject
//
//  Created by Tarun Chaudhary on 30/11/22.
//

import SwiftUI

struct ContentView: View {
    
    
   @State var isNight = false

    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray :  Color("lightBlue"))
            VStack{
                CityTextView(cityName: "Testing City")
                MainWeatherView(imageName:  isNight ? "moon.stars.fill" : "cloud.sun.fill", tmp: 35)
                HStack(spacing:20){
                    WeatherView(dayName: "MON", dayTemp: 35, dayWeather:"cloud.sun.fill")
                    WeatherView(dayName: "TUE", dayTemp: 45, dayWeather:"sun.max.fill")
                    WeatherView(dayName: "WED", dayTemp: 30, dayWeather:"wind.snow")
                    WeatherView(dayName: "THUR", dayTemp: 13, dayWeather:"sunset.fill")
                    WeatherView(dayName: "FRI", dayTemp: 10, dayWeather:"snow")
                }
                Spacer()
               
                Button{
                    print("tapped")
                    isNight.toggle()                    
                        
                }label: {
                    RoundedCornerButton(title: "Change UI", backgroundcolor: Color.white, textColor:Color.blue)
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

struct WeatherView: View {
    
    var dayName : String
    var dayTemp : Int
    var dayWeather : String

    var body: some View {
        VStack{
            Text(dayName)
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Image(systemName: dayWeather)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(dayTemp)°")
                .font(.system(size: 28))
                .fontWeight(.medium)
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundView: View {
    var topColor : Color
    var bottomColor : Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]), startPoint: .topLeading, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView : View{
    
    var cityName : String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .bold, design: .default))
            .foregroundColor(Color.red)
            .padding(.top,10)
    }
}

