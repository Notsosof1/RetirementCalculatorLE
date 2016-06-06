//
//  DatePickerViewController.swift
//  Retirement Counter
//
//  Created by Cynthia Whitlatch on 6/6/16.
//  Copyright © 2016 Cynthia Whitlatch. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var datePickerDate: UIDatePicker!
    
    let buttonColor = UIColor(red:0/255, green:134/255, blue:239/255, alpha:1.0).CGColor as CGColorRef
    let buttonBorder = UIColor.whiteColor().CGColor
    
    //Assigns date chosen on date picker to date
 //   let date:NSDate = datePickerDate.date
    
    
    @IBAction func datePickerPressed(sender: AnyObject) {
    }
    @IBAction func saveButtonPressed(sender: AnyObject) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customSaveButton()

    }
    
    override func viewDidAppear(animated: Bool) {
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.Black
        nav?.tintColor = UIColor.whiteColor()
        
            //CUSTOM DATEPICKER APPEARANCE
        
        datePickerDate.setValue(UIColor.whiteColor(), forKeyPath: "textColor")
        datePickerDate.datePickerMode = .CountDownTimer
        datePickerDate.datePickerMode = .DateAndTime
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func customSaveButton() {
        saveButton.layer.borderColor = buttonBorder
        saveButton.layer.backgroundColor  = buttonColor
        saveButton.layer.borderWidth = 1
        saveButton.layer.cornerRadius = 10
        

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
