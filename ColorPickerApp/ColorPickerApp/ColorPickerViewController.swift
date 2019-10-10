//
//  ColorPickerViewController.swift
//  ColorPickerApp
//
//  Created by James Kirkland on 10/10/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    @IBOutlet weak var myLabel: UILabel!
    
        
    //color structure
    struct ColorsStruct {
        var color : String
        var bg: UIColor

    }
 
    
    //var red = ColorsStruct(color: "red", bg: UIColor.red)
   // var orange = ColorsStruct(color: "orange", bg: UIColor.orange)
   // var yellow = ColorsStruct(color: "yellow", bg: UIColor.yellow)
   // var green = ColorsStruct(color: "green", bg: UIColor.green)
    //var blue = ColorsStruct(color: "blue", bg: UIColor.blue)
    //var purple = ColorsStruct(color: "purple", bg: UIColor.purple)
    
    // array of stuct instances
    var Colors =  [ColorsStruct(color: "red", bg: UIColor.red), ColorsStruct(color: "orange", bg: UIColor.orange), ColorsStruct(color: "yellow", bg: UIColor.yellow),  ColorsStruct(color: "green", bg: UIColor.green), ColorsStruct(color: "blue", bg: UIColor.blue), ColorsStruct(color: "purple", bg: UIColor.purple)]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return (Colors[row]).color
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = (Colors[row]).bg
        myLabel.text = (Colors[row]).color
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = (Colors[0]).bg
        myLabel.text = (Colors[0]).color
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
