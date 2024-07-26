//
//  ViewController.swift
//  lec2
//
//  Created by Vin Bui on 9/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties(view)
    
    let nameLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        
        setupLabel()
        
    }
    
    private func setupLabel() {
        nameLabel.text = "Richie Sun"
        nameLabel.font = UIFont.systemFont(ofSize: 24)
        nameLabel.textColor = UIColor.black
        
        view.addSubview(nameLabel)
        
        nameLabel
            .translatesAutoresizingMaskIntoConstraints
        = false
        
        NSLayoutConstraint.activate([nameLabel.topAnchor
            .constraint(equalTo:
                                    view.safeAreaLayoutGuide
                                    .topAnchor),
                                     nameLabel.centerXAnchor
            .constraint(equalTo: view.centerXAnchor)
        ])
    }


}

