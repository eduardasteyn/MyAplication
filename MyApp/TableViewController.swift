//
//  TableViewController.swift
//  MyApp
//
//  Created by Jonathan on 10/03/20.
//  Copyright © 2020 teste. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {

    //MARK Propriedades
    
    var cidades = [City]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

  

    override func numberOfSections(in tableView: UITableView) -> Int {
 
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return cidades.count
        
   
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        
        let cidade = cidades[indexPath.row]
        
        cell?.cidade.text = cidade.nome
        cell?.descricao.text = cidade.descricao
        cell?.temperatura.text = String(cidade.temperatura)
        cell?.icone.image = cidade.icone
        
        
        return cell!
    }
}
