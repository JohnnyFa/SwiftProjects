//
//  DetalhesFilmeViewController.swift
//  FilmesDescription
//
//  Created by Mac Mini on 05/03/21.
//  Copyright © 2021 johnny IOS. All rights reserved.
//

import Foundation
import UIKit

class DetalhesFilmeViewController: UIViewController{
    
    var filme: Filme!
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        descricaoLabel.sizeToFit()
    }
}
