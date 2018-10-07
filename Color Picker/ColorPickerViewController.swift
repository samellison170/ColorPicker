//
//  ViewController.swift
//  Color Picker
//
//  Created by Sam on 10/5/18.
//  Copyright © 2018 Sam. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    struct color {
        var name: String
        var UIcolor: UIColor
        
        init(name: String, UIcolor: UIColor){
            self.name = name
            self.UIcolor = UIcolor
        }
    }
    var Colors = [
        color(name: "Red", UIcolor: UIColor.red),
        color(name: "Orange", UIcolor: UIColor.orange),
        color(name: "Yellow", UIcolor: UIColor.yellow),
        color(name: "Green", UIcolor: UIColor.green),
        color(name: "Blue", UIcolor: UIColor.blue),
        color(name: "Purple", UIcolor: UIColor.purple),
        color(name: "Brown", UIcolor: UIColor.brown)
    ]
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors[0].UIcolor
        colorLabel.text = Colors[0].name
        createPickerView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Colors.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "ass"//Colors[row].name
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var selectedProperty = Colors[row].name
        colorLabel.text = selectedProperty
    }
    func createPickerView(){
        let pickerView = UIPickerView()
        pickerView.delegate = self
    }
    
}


