//
//  ViewController.swift
//  TConverter
//
//  Created by MacBook on 07.11.2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var farenheitF: UILabel!
    @IBOutlet weak var celciumC: UILabel!
    @IBOutlet weak var sloder: UISlider!{
        didSet{
            sloder.maximumValue = 100
            sloder.minimumValue = 0
            sloder.value = 0
        }
    }
    
    
    @IBAction func scrollT(_ sender: UISlider) {
        let tempCelsius = Int(round(sender.value))
        celciumC.text = "\(tempCelsius)ºC"
        let farenheitTemp = Int(round((sender.value * 9 / 5) + 32))
        farenheitF.text = "\(farenheitTemp)ºF"
        
    }
}


