//
//  Filme.swift
//  FilmesDescription
//
//  Created by Mac Mini on 04/03/21.
//  Copyright © 2021 johnny IOS. All rights reserved.
//

import UIKit

class Filme{
    
    var titulo: String!
    var descricao: String!
    let imagem: UIImage!
    
    init(titulo: String, descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
