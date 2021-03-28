//
//  ViewController.swift
//  RGB
//
//  Created by Ионин Михаил Викторович on 28.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        colorView.layer.cornerRadius = colorView.frame.width / 20
    
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func redSliderAction() {
        redSliderLabel.text = NSString(format: "%.2f", redSlider.value) as String
        
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        greenSliderLabel.text = NSString(format: "%.2f", greenSlider.value) as String
        
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        blueSliderLabel.text = NSString(format: "%.2f", blueSlider.value) as String
        
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

