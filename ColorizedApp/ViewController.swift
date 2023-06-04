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
        viewColor.layer.cornerRadius = 12
        
        setupSlider(redSlider, value: 0.15)
        setupSlider(greenSlider, value: 0.27)
        setupSlider(blueSlider, value: 0.47)
        
        redSliderValue.text = String(redSlider.value)
        greenSliderValue.text = String(greenSlider.value)
        blueSliderValue.text = String(blueSlider.value)

        changeColor()
        
        
        
    }
    
    @IBAction func redSliderAction() {
        redSliderValue.text = String(round(redSlider.value * 100) / 100)
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenSliderValue.text = String(round(greenSlider.value * 100) / 100)
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueSliderValue.text = String(round(blueSlider.value * 100) / 100)
        changeColor()
    }
    
    
    //MARK: - Private Methods
    private func setupSlider(_ slider: UISlider, value: Float) {
        slider.value = value
    }
    
    private func changeColor() {
        viewColor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1
        )
    }
}


