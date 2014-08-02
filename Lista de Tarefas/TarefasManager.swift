//
//  TarefasManager.swift
//  Lista de Tarefas
//
//  Created by Rafael Luiz on 19/07/14.
//  Copyright (c) 2014 Rafael Luiz. All rights reserved.
//

import UIKit

var tarefasMgr : TarefasManager = TarefasManager();

struct tarefa{
    var name = "Un-Name";
    var desc = "Un-describle";

}

class TarefasManager: NSObject {
    
    var tarefas = [tarefa]()
    
    func addTask(name: String, desc: String){
        
        tarefas.append(tarefa(name:name, desc:desc))
        
    }
    
    
    
   
}
