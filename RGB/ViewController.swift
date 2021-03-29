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

    func colourTheView () -> UIColor {
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        return colorView.backgroundColor!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colourTheView()
        
        colorView.layer.cornerRadius = colorView.frame.width / 20
        
        //Clear background colors from labels
        redSliderLabel.backgroundColor = UIColor.clear
        greenSliderLabel.backgroundColor = UIColor.clear
        blueSliderLabel.backgroundColor = UIColor.clear
        
        redSliderLabel.text = NSString(format: "%.2f",
            redSlider.value) as String
        greenSliderLabel.text = NSString(format: "%.2f", greenSlider.value) as String
        blueSliderLabel.text = NSString(format: "%.2f", blueSlider.value) as String
    
    }

    @IBAction func redSliderAction() {
        redSliderLabel.text = NSString(format: "%.2f", redSlider.value) as String
        colourTheView()
    }

    @IBAction func greenSliderAction() {
        greenSliderLabel.text = NSString(format: "%.2f", greenSlider.value) as String
       colourTheView()
    }

    @IBAction func blueSliderAction() {
        blueSliderLabel.text = NSString(format: "%.2f", blueSlider.value) as String
        colourTheView()
    }
}

