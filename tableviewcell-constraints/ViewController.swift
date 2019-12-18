//
//  ViewController.swift
//  tableviewcell-constraints
//
//  Created by user on 12/17/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let centerButton = UIButton(frame: CGRect.init(x: 0, y: 0, width: 200, height: 200))
        centerButton.backgroundColor = .blue
        centerButton.setTitle("Go to Table", for: .normal)
        centerButton.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        view.addSubview(centerButton)
    }
    
    @objc func goToNext() {
        let tableVC = MainTableViewController(style: .plain)
        present(tableVC, animated: true, completion: nil)
    }
    
    

}

