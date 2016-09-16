//
//  RabbitCell.swift
//  Rabbits
//
//  Created by Christopher Webb-Orenstein on 9/16/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class RabbitCell: UITableViewCell {
    
    static let cellIdentifier = "RabbitCell"
    
    let rabbitNameLabel = UILabel()
    let rabbitAgeLabel = UILabel()
    var rabbitPicture = UIImageView()

   
    override func layoutSubviews() {
        super.layoutSubviews()
        setupConstraints()
        setupCell()
        backgroundColor = UIColor.blue
    }
    
    func setupCell() {
        rabbitNameLabel.textColor = UIColor.white
        rabbitNameLabel.font = UIFont(name: Constants.baseFont, size: 20)
        rabbitNameLabel.textAlignment = .center
        rabbitAgeLabel.textColor = UIColor.white
        rabbitAgeLabel.font = UIFont(name: Constants.baseFont, size: 20)
        rabbitPicture.backgroundColor = UIColor.orange
    }
    
    func setupConstraints() {
        
        addSubview(rabbitNameLabel)
        addSubview(rabbitAgeLabel)
        addSubview(rabbitPicture)
        
        rabbitNameLabel.translatesAutoresizingMaskIntoConstraints = false
        rabbitNameLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.25).isActive = true
        rabbitNameLabel.widthAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.5).isActive = true
        rabbitNameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant:0).isActive = true
        rabbitNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0).isActive = true
        
        rabbitAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        rabbitAgeLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.25).isActive = true
        rabbitAgeLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5).isActive = true
        rabbitAgeLabel.leadingAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0).isActive = true
        rabbitAgeLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0).isActive = true
        
        rabbitPicture.translatesAutoresizingMaskIntoConstraints = false
        rabbitPicture.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.5).isActive = true
        rabbitPicture.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25).isActive = true
        rabbitPicture.trailingAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        rabbitPicture.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0).isActive = true
    }

}
