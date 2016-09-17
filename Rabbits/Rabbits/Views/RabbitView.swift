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
        setupConstraints()
        setupView()
    }
    
    func setupView() {
        
        rabbitPicture.backgroundColor = UIColor.blue
        
        rabbitNameLabel.font = UIFont(name: Constants.baseFont, size: 20)
        rabbitNameLabel.textColor = UIColor.black
        rabbitNameLabel.textAlignment = .center
        
        rabbitAgeLabel.font = UIFont(name: Constants.baseFont, size: 20)
        rabbitAgeLabel.textColor = UIColor.black
        rabbitAgeLabel.textAlignment = .center
    }
    
    func setupConstraints() {
        addSubview(rabbitPicture)
        addSubview(rabbitNameLabel)
        addSubview(rabbitAgeLabel)
        
        rabbitPicture.translatesAutoresizingMaskIntoConstraints = false
        rabbitPicture.widthAnchor.constraint(equalTo:widthAnchor.self, multiplier: 0.5).isActive = true
        rabbitPicture.heightAnchor.constraint(equalTo:heightAnchor, multiplier: 0.25).isActive = true
        rabbitPicture.centerXAnchor.constraint(equalTo:centerXAnchor.self).isActive = true
        rabbitPicture.centerYAnchor.constraint(equalTo:centerYAnchor.self).isActive = true
        
        rabbitNameLabel.translatesAutoresizingMaskIntoConstraints = false
        rabbitNameLabel.widthAnchor.constraint(equalTo:widthAnchor.self, multiplier: 0.75).isActive = true
        rabbitNameLabel.heightAnchor.constraint(equalTo:heightAnchor.self, multiplier: 0.1).isActive = true
        rabbitNameLabel.centerXAnchor.constraint(equalTo:centerXAnchor.self).isActive = true
        
        rabbitAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        rabbitAgeLabel.widthAnchor.constraint(equalTo:widthAnchor.self, multiplier: 0.25).isActive = true
        rabbitAgeLabel.heightAnchor.constraint(equalTo:heightAnchor.self, multiplier: 0.1).isActive = true
        rabbitAgeLabel.centerXAnchor.constraint(equalTo: centerXAnchor.self).isActive = true
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
