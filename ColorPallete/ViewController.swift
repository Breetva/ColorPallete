//
//  ViewController.swift
//  ColorPallete
//
//  Created by Dmitry on 19.09.23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLablel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderAction()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IB Actions
    @IBAction func sliderAction() {
        redLablel.text = formatSliderValue(redSlider)
        greenLabel.text = formatSliderValue(greenSlider)
        blueLabel.text = formatSliderValue(blueSlider)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), 
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1.0)
    }
    
    // MARK: - private methods
    private func formatSliderValue(_ slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}

