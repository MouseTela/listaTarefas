//
//  SecondViewController.swift
//  Lista de Tarefas
//
//  Created by Rafael Luiz on 19/07/14.
//  Copyright (c) 2014 Rafael Luiz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtName: UITextField
    
    @IBOutlet var txtDesc: UITextField
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func click(sender: AnyObject) {
        tarefasMgr.addTask(txtName.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtName.text = ""
        txtDesc.text = ""
        self.tabBarController.selectedIndex = 0
        
        
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        //self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        
        textField.resignFirstResponder()
        return true
    }

}

