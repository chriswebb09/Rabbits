//
//  RabbitView.swift
//  Rabbits
//
//  Created by Christopher Webb-Orenstein on 9/16/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class RabbitView: UIView {
    
    var rabbitPicture = UIImageView()
    var rabbitNameLabel = UILabel()
    var rabbitAgeLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    func setupView() {
        
    }
    
    func setupConstraints() {
        addSubview(rabbitPicture)
        addSubview(rabbitNameLabel)
        addSubview(rabbitAgeLabel)
        
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
