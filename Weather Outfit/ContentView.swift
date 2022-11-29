//
//  ContentView.swift
//  Weather Outfit
//
//  Created by zchagra.dev on 22/11/2022.
//
//Following SwiftUI Basics Tutorial : https://youtu.be/HXoVSbwWUIk

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //View supports only 10 subViews
        ZStack{

            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            VStack(spacing:10) {
                CityTextView(cityName:"Winterfell")
                
                MainWeatherStatusView(ImageName:"cloud.sun.fill",temperature:19)
                
                
                HStack(spacing:10){
                    //Command click on element to create an ExtractedView
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "cloud.sun.fill",
                                   temerature: 23)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "sun.max.fill",
                                   temerature: 23)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "wind.snow",
                                   temerature: 23)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "sunset.fill",
                                   temerature: 23)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.rain.fill",
                                   temerature: 23)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "snow",
                                   temerature: 23)
                    WeatherDayView(dayOfWeek: "SUN",
                                   imageName: "sun.max.fill",
                                   temerature: 23)
                }
                
                Spacer()
                
                WeatherButton(label: "Change Time Now", bgColor: Color.white, txtColor: Color.blue)
                
                Spacer()
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
    
    var dayOfWeek:String
    var imageName:String
    var temerature:Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek).foregroundColor(.white)
            Image(systemName: imageName).renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40)
            Text("\(temerature)").font(.system(size: 28, weight: .medium)).foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor:Color //.blue //Color("lightBlue")
    var bottomColor:Color
    
    var body: some View {
        //lightBlue is defined in Assets folder
        LinearGradient(gradient: Gradient(colors:[topColor,bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
        //edgesIgnoringSafeArea(.all) ignore safe areas (usually for background)
    }
}

struct CityTextView: View {
    var cityName:String
    
    var body: some View {
        Text(cityName).font(.system(size: 32,weight: .medium, design: .default)).foregroundColor(.white).padding()
    }
}

struct MainWeatherStatusView: View {
    
    var ImageName:String
    var temperature:Int
    
    var body: some View {
        VStack{
            Image(systemName: ImageName).renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 180, height: 180)
            Text("\(temperature)").font(.system(size: 70, weight: .medium)).foregroundColor(.white)
        }.padding(.bottom,40)
    }
}


