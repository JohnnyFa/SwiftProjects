//
//  ViewController.swift
//  FilmesDescription
//
//  Created by Mac Mini on 04/03/21.
//  Copyright © 2021 johnny IOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

       override func viewDidLoad() {
         super.viewDidLoad()
         
         var filme: Filme
         filme = Filme(titulo:"007 - Spectre", descricao: "O agente 007 precisa impedir que a Spectre, uma organização envolvida com terrorismo, tráfico de drogas e prostituição, desenvolva um plano maligno de segurança mundial.", imagem: #imageLiteral(resourceName: "filme1"))
         filmes.append( filme )
         
         filme = Filme(titulo:"Star Wars", descricao: "O centro da trama é uma disputa política entre um império tirano e ditatorial e um grupo libertário. O enredo é permeado pela tragédia pessoal de Anakin Skywalker, um jedi (do bem) que sucumbe ao Lado Sombrio da Força (do mal) se transformando no vilão Darth Vader, que é um dos líderes do Império Galático.", imagem: #imageLiteral(resourceName: "filme2"))
         filmes.append( filme )
         
         filme = Filme(titulo:"Impacto Mortal", descricao: "Após o reaparecimento de um assassino, um policial junta-se ao FBI para levar o criminoso à justiça.", imagem: #imageLiteral(resourceName: "filme3"))
         filmes.append( filme )
         
         filme = Filme(titulo:"Deadpool", descricao: "Wade Wilson é um ex-agente especial que passou a trabalhar como mercenário. Seu mundo é destruído quando um cientista maligno o tortura e o desfigura completamente. O experimento brutal transforma Wade em Deadpool, que ganha poderes especiais de cura e uma força aprimorada.", imagem: #imageLiteral(resourceName: "filme4"))
         filmes.append( filme )
         
         filme = Filme(titulo:"O Regresso", descricao: "Após ser atacado por um urso, o caçador Hugh Glass é abandonado na floresta por seu companheiro John Fitzgerald. Apesar de muito ferido, Glass consegue sobreviver e vai em busca de vingança.", imagem: #imageLiteral(resourceName: "filme5"))
         filmes.append( filme )
         
         filme = Filme(titulo:"A Herdeira", descricao: "Dina tem um dom sobrenatural e acaba sendo requisitada para fazer que um herdeiro confesse um crime, ao recusar, ela acaba presa e agora precisa descobrir quem é o culpado dos crimes para se salvar.", imagem: #imageLiteral(resourceName: "filme6"))
         filmes.append( filme )
         
         filme = Filme(titulo:"Caçadores de emoção", descricao: "Após uma série de assaltos a bancos bizarros no sul da Califórnia, com os bandidos usando máscaras de vários ex-presidentes, o agente federal Johnny Utah se infiltra na gangue suspeita de ter cometido os crimes. O grupo de surfistas, liderado pelo carismático Bodhi, é viciado na adrenalina do roubo. Porém, Utah se apaixona por Tyler, uma das integrantes do grupo, e isso complica o seu senso de dever.", imagem: #imageLiteral(resourceName: "filme7"))
         filmes.append( filme )
         
         filme = Filme(titulo:"Regresso do mal", descricao: "Assombrado por imagens assustadoras e mensagens inexplicáveis, um homem tenta descobrir o mistério por trás do desaparecimento de seu filho.", imagem: #imageLiteral(resourceName: "filme8"))
         filmes.append( filme )
         
         filme = Filme(titulo:"Tarzan", descricao: "Um bebê perde os pais na selva. Órfão e sozinho, ele é encontrado por uma macaca que o cria como se fosse seu próprio filho. Tarzan cresce pensando ser um gorila, agindo e vivendo como tal. Quando uma equipe de pesquisadores chega à floresta, o rapaz percebe que é igual a eles. Tarzan encontra a bela Jane correndo perigo e a salva, apaixonando-se por ela. Ele se vê dividido entre o desejo de estar com gente da sua espécie e a lealdade com a família de gorilas que o criou.", imagem: #imageLiteral(resourceName: "filme9"))
         filmes.append( filme )
         
         filme = Filme(titulo:"Hardcore Henry", descricao: "Henry, um ciborgue recém-ressuscitado, precisa salvar sua mulher das garras de um tirano psicótico com poderes telecinéticos que lidera um exército de mercenários. Jimmy é a única esperança de Henry para realizar tal feito até o final do dia.", imagem: #imageLiteral(resourceName: "filme10"))
         filmes.append( filme )
         
     }
     
     override func numberOfSections(in tableView: UITableView) -> Int {
         return 1
     }
     
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return filmes.count
     }
     
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         let filme: Filme = filmes[ indexPath.row ]
         let celusaReuso = "celulaReuso"
        
         let celula = tableView.dequeueReusableCell(withIdentifier: celusaReuso, for: indexPath) as! FilmeCelula
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        celula.descricaoLabel.adjustsFontSizeToFitWidth = false
        
        celula.filmeImageView.layer.cornerRadius = 42
        //Isso pode ser feito no layout colocando uma key layer.cornerRadius e valor 42
        
        // celula.textLabel?.text = filme.titulo
        // celula.imageView?.image = filme.imagem
         
         return celula
     }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalheFilme"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
                
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
                
            }
            
        }
    }

     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
         // Dispose of any resources that can be recreated.
     }
}

