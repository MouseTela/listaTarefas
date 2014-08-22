//
//  FirstViewController.swift
//  Lista de Tarefas
//
//  Created by Rafael Luiz on 19/07/14.
//  Copyright (c) 2014 Rafael Luiz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tblTarefas: UITableView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        
        return tarefasMgr.tarefas.count
        
    }
    
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            
            tarefasMgr.tarefas.removeAtIndex(indexPath.row)
            tblTarefas.reloadData()
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        
        tblTarefas.reloadData()
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default:")
        
        cell.textLabel.text = tarefasMgr.tarefas[indexPath.row].name
        cell.detailTextLabel.text = tarefasMgr.tarefas[indexPath.row].desc
        
        
        return cell
    }
    


}

