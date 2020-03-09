//
//  ViewController.swift
//  PickerView
//
//  Created by MAC0008 on 09/03/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtSelectedName: UITextField!
    @IBOutlet weak var picker: UIPickerView!

    var name = ["Asha","Birva","Chandani","Dhruvi","Ekta","Falak","Gopi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.dataSource = self
        picker.delegate = self
        txtSelectedName.inputView = picker
    }


}

extension ViewController: UIPickerViewDataSource,UIPickerViewDelegate
{

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return name.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return name[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtSelectedName.text = name[row]
    }

}
