//
//  AwesomeTableViewCell.swift
//  tableviewcell-constraints
//
//  Created by user on 12/17/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class AwesomeTableViewCell: UITableViewCell {
    
    var uiSwitch = UISwitch()
    
    var mainLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "mainLabel"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(mainLabel)
        contentView.backgroundColor = .orange
        backgroundColor = .green
        accessoryView = uiSwitch
        accessoryView?.backgroundColor = .purple

        NSLayoutConstraint.activate([
        mainLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        mainLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        mainLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
        mainLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            
        contentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        contentView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 0),
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
