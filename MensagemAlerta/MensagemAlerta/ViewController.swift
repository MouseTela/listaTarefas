//
//  ViewController.swift
//  MensagemAlerta
//
//  Created by Rafael Luiz on 10/08/14.
//  Copyright (c) 2014 MouseTela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nome: UITextField
    @IBOutlet var senha: UITextField
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func MessageOK(sender: AnyObject) {
        
        var alert = UIAlertController(title: "Alerta", message: "Mensagem", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }

    @IBAction func MessageOptions(sender: AnyObject) {
        
        var actionSheet =  UIAlertController(title: "Selecione uma Opcao", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Opcao 1 ", style: UIAlertActionStyle.Default, handler: { (ACTION :UIAlertAction!)in
            println("Opcao 1");
            }))
        
        actionSheet.addAction(UIAlertAction(title: "Opcao 2", style: UIAlertActionStyle.Default, handler: { (ACTION :UIAlertAction!)in
            println("Opcao 2");
            }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.Cancel, handler: nil))
        
        self.presentViewController(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func MessageOkCancel(sender: AnyObject) {
        
        var alert = UIAlertController(title: "Alerta", message: "Mensagem", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (ACTION :UIAlertAction!)in
            println("OK");
            }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    func addTextFieldNome(textField: UITextField!){
        // add the text field and make the result global
        textField.placeholder = "Nome"
        self.nome = textField
        
    }
    
    func addTextFieldSenha(textField: UITextField!){
        // add the text field and make the result global
        textField.placeholder = "Senha"
        textField.secureTextEntry = true
        self.senha = textField
        
    }
    
    @IBAction func MessageLogin(sender: AnyObject) {
        
        var alert = UIAlertController(title: "Login", message: "Confirmar meus dados", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (ACTION :UIAlertAction!)in
            println(self.nome.text);
            println(self.senha.text);
            }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
        
       alert.addTextFieldWithConfigurationHandler(addTextFieldNome)
       alert.addTextFieldWithConfigurationHandler(addTextFieldSenha)
        
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
}

