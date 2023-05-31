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
    
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueLable: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        redSliderValue.text = String(redSlider.value)
        greenSliderValue.text = String(greenSlider.value)
        blueSliderValue.text = String(blueSlider.value)
        
        
    }
    
    @IBAction func redSliderAction() {
        redSliderValue.text = String(round(redSlider.value * 100) / 100)
        viewColor.backgroundColor = changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenSliderValue.text = String(round(greenSlider.value * 100) / 100)
        viewColor.backgroundColor = changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueSliderValue.text = String(round(blueSlider.value * 100) / 100)
        viewColor.backgroundColor = changeColor()
    }
    
    
    //MARK: - Private Methods
    private func setupRedSlider() {
        redSlider.value = 0.15
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0.27
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0.47
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
    }
    
    private func changeColor() -> UIColor {
        UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
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
