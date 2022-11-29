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
        //supports only 10 views
        ZStack{
//            lightBlue is defined in Assets folder
            LinearGradient(gradient: Gradient(colors:[.blue,Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
            //edgesIgnoringSafeArea(.all) ignore safe areas (usually for background)
            
            VStack(spacing:10) {
                Text("Winterfell").font(.system(size: 32,weight: .medium, design: .default)).foregroundColor(.white).padding()
                
                VStack{
                    Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 180, height: 180)
                    Text("19").font(.system(size: 70, weight: .medium)).foregroundColor(.white)
                }.padding(.bottom,40)
                
                
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
                
                Button{
                    print("tapped")
                } label: {
                    Text("Change Time Now").frame(width: 280,height: 50).background(Color.white).font(.system(size:20, weight: .bold, design: .default)).cornerRadius(10)
                }
                
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
