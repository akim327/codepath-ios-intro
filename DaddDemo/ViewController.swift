//
//  ViewController.swift
//  DaddDemo
//
//  Created by Allison Kim on 9/7/18.
//  Copyright © 2018 Allison Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    @IBAction func didTapTextButton(_ sender: Any) {
        if textField.text == "" {
            textLabel.text = "Hello from Allison!"
            view.endEditing(true)
        } else {textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
        }
    }
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Allison!"
        textLabel.textColor = backgroundColor
        view.backgroundColor = backgroundColor
    }
}

