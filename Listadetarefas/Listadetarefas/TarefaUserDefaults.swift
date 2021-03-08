//
//  TarefaUserDefaults.swift
//  Listadetarefas
//
//  Created by Mac Mini on 05/03/21.
//  Copyright © 2021 johnny IOS. All rights reserved.
//

import UIKit

class TarefaUserDefaults{
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func salvar(tarefa: String){
        
        // Pegando tarefas salvas
        tarefas = listar()
    
        // Listando novas tarefas
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
    
    }
    
    func listar() -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        } else{
        return []
        }
    }
    
    func remover(indice: Int){
        tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
}
