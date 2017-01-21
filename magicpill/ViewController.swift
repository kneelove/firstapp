//
//  ViewController.swift
//  magicpill
//
//  Created by Nilav Vaghasiya on 1/20/17.
//  Copyright © 2017 zeolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    var basepill = ["Paracetamol","Diclofam","Duoling"]
    var toppill = ["Gringo","Yello","Hugo"]
    
    @IBOutlet weak var PillButton: UIButton!
    @IBOutlet weak var PillPicker: UIPickerView!
    
    override func viewDidLoad() {
    
        
        super.viewDidLoad()
        PillPicker.dataSource=self
        PillPicker.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PillButtonPressed(_ sender: Any) {
        PillPicker.isHidden = false
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return basepill.count
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
  
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return basepill[row]
        }else if component == 1{
            return toppill[row]
            
        }
        
        return "Other: \(row)"
        //if loop for component printing name
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let a = "\(basepill[row]) \(toppill[row])"
        PillButton.setTitle(a, for: UIControlState.normal)
        PillPicker.isHidden=true
    }
    
}


