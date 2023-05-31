//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Yuri Luka on 31/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLable: UILabel!
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var viewColor: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
        redSliderValue.text = String(redSlider.value)
        
        
    }
    
    @IBAction func redSliderAction() {
        redSliderValue.text = String(round(redSlider.value * 100) / 100)
        viewColor.backgroundColor = changeColor()
    }
    
    
    
    
    //MARK: - Private Methods
    private func setupSlider() {
        redSlider.value = 0.15
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
    }
    
    private func changeColor() -> UIColor {
        UIColor(red: CGFloat(redSlider.value), green: 0.1, blue: 0.5, alpha: 1)
    }
}


//MARK: Extension UIColor
extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        return (red, green, blue, alpha)
    }
}
