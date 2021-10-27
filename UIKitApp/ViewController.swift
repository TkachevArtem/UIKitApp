//
//  ViewController.swift
//  UIKitApp
//
//  Created by Artem Tkachev on 27.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var segmentControll: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var slider: UISlider!
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var switchForm: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Segmented Controll
        segmentControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // MARK: Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // MARK: Slider
        slider.value = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .black
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        mainLabel.text = String(slider.value)
        
        // MARK: TextField
        textField.backgroundColor = .white
        // textField.keyboardType = .numberPad //вызывает клавиатуру из цифр
        
        // MARK: Buton
        mainButton.layer.cornerRadius = 10
        mainButton.setTitle("Готово", for: .normal)
        
        // MARK: Date Picker
        
        // MARK: Switch
        
        
        
    }

    @IBAction func segmentedControllAction(_ sender: Any) {
        switch segmentControll.selectedSegmentIndex{
        case 0:
            mainLabel.text = "Choose segment with index 0"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Choose segment with index 1"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "Choose segment with index 2"
            mainLabel.textColor = .green
        default: break
        }
    }
    
    @IBAction func sliderAction() {
        mainLabel.text = String(Int(slider.value))
    }
    
    @IBAction func mainButtonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        mainLabel.text = text
        }
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormator = DateFormatter()
        dateFormator.dateStyle = .full
        
        mainLabel.text = dateFormator.string(from: datePicker.date)
    }
    
    @IBAction func toggleElements(_ sender: Any) {
        segmentControll.isHidden = !switchForm.isOn
        mainLabel.isHidden = !switchForm.isOn
        slider.isHidden = !switchForm.isOn
        textField.isHidden = !switchForm.isOn
        mainButton.isHidden = !switchForm.isOn
        datePicker.isHidden = !switchForm.isOn
    }
    
    
        
}

