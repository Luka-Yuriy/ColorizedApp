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
    @IBOutlet var VIewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
        redSliderValue.text = String(redSlider.value)
        
    }
    
    @IBAction func redSliderAction() {
        redSliderValue.text = String(round(redSlider.value * 100) / 100)
    }
    
    
    
    //MARK: - Private Methods
    private func setupSlider() {
        redSlider.value = 0.15
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
    }
}
