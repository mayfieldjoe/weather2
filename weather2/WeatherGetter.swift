//
//  WeatherGetter.swift
//  weather2
//
//  Created by jmayfield37 on 11/10/16.
//  Copyright © 2016 Joe Mayfield. All rights reserved.
//

import Foundation
class WeatherGetter{
    
    
    private let openWeatherMapBaseURL = "http://api.openweathermap.org/data/2.5/weather"
    private let openWeatherMapApiKey = "c9383d08891aeca72e2251735fde1036"
    
    
    func getWeather(city: String){
        let session = NSURLSession.sharedSession()
        let weatherRequestURL = NSURL(string: "\(openWeatherMapBaseURL)?APPID=\(openWeatherMapApiKey)&q=\(city)")!
        
        let dataTask = session.dataTaskWithURL(weatherRequestURL){ (data: NSData?, response: NSURLResponse?, error: NSError?) in
            
            if let error = error{
                print("Error:\n\(error)")
            }
            else {
                
                print("Raw data:\n\(data!)\n")
                let dataString = String(data: data!, encoding: NSUTF8StringEncoding)
                print("Human-readable data: \n\(dataString!)")
                //print("Data:\n\(data!)")
                
            }
            
        }
        
        dataTask.resume()
    }
    
    
}
