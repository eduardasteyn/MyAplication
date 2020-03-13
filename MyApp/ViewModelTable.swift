//
//  ViewModelTable.swift
//  MyApp
//
//  Created by Jonathan on 13/03/20.
//  Copyright © 2020 teste. All rights reserved.
//

import Foundation
import UIKit

class ViewModelTable : UIView {
// MARK: - Propriedades
        public let imageView: UIImageView
        public let nameLabel: UILabel
        public let descricao : UITextField
        public let temperatura : UITextField
        
        public override init(frame: CGRect) {
            
            var childFrame = CGRect(x: 0, y: 16,
                                    width: frame.width,
                                    height: frame.height / 2)
            imageView = UIImageView(frame: childFrame)
            imageView.contentMode = .scaleAspectFit
            
            childFrame.origin.y += childFrame.height + 16
            childFrame.size.height = 30
            nameLabel = UILabel(frame: childFrame)
            nameLabel.textAlignment = .center
            
            childFrame.origin.y += childFrame.height
            descricao = UITextField(frame: childFrame)
            descricao.textAlignment = .center
            
            childFrame.origin.y += childFrame.height
            temperatura = UITextField(frame: childFrame)
            temperatura.textAlignment = .center
            
            super.init(frame: frame)
            
            backgroundColor = .white
            addSubview(imageView)
            addSubview(nameLabel)
            addSubview(descricao)
            addSubview(temperatura)
        }
        
        @available(*, unavailable)
        public required init?(coder: NSCoder) {
            fatalError("init?(coder:) is not supported")
        }
    }


