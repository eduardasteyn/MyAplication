//
//  TableViewCell.swift
//  MyApp
//
//  Created by Jonathan on 10/03/20.
//  Copyright © 2020 teste. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cidade: UILabel!
    
    @IBOutlet weak var icone: UIImageView!
    
    @IBOutlet weak var temperatura: UITextField!
    
    @IBOutlet weak var descricao: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
