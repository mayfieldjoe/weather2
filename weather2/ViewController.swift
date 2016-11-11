//
//  ViewController.swift
//  weather2
//
//  Created by jmayfield37 on 11/10/16.
//  Copyright © 2016 Joe Mayfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let weather = WeatherGetter()
        weather.getWeather("Chattanooga")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

