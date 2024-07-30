//
//  ViewControllerOne.swift
//  lec3
//
//  Created by Vin Bui on 6/3/23.
//

import UIKit

protocol UpdateTextDelegate: AnyObject {
    func updateText(newText: String)
}

class ViewControllerOne: UIViewController {
    
    // MARK: - Properties (view)
    
    private let pushVCButton = UIButton()
    private let textLabel = UILabel()
    
    // MARK: - Properties (data)
    private var text: String = "CHANGE ME"
    
    // MARK: - viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "ViewController One"
        view.backgroundColor = .systemBackground
        
        setupPushVCButton()
        setupTextLabel()
    }
    
    // MARK: - Setup Views
    
    private func setupPushVCButton() {
        pushVCButton.setTitle("Push VC", for: .normal)
        pushVCButton.setTitleColor(.systemBackground, for: .normal)
        pushVCButton.backgroundColor = .systemBlue
        pushVCButton.layer.cornerRadius = 10
        pushVCButton.addTarget(self, action: #selector(pushVC), for: .touchUpInside)
        
        view.addSubview(pushVCButton)
        pushVCButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pushVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushVCButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            pushVCButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupTextLabel() {
        textLabel.text = text
        textLabel.textColor = .label
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textLabel.bottomAnchor.constraint(equalTo: pushVCButton.topAnchor, constant: -10),
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    // MARK: - Button Helpers
    
    @objc private func pushVC() {
        // TODO: Push ViewControllerTwo
        let viewController2 = ViewControllerTwo(text: text, delegate: self)
        
        navigationController?.pushViewController(viewController2, animated: true)
    }

}


extension ViewControllerOne: UpdateTextDelegate {
    func updateText(newText: String) {
        self.text = newText
        self.textLabel.text = newText
    }
    
    
}
