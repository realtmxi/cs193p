//
//  ViewController.swift
//  lec4
//
//  Created by Vin Bui on 6/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties (view)
    private let tableView = UITableView()
    
    // MARK: - Properties (data)
    
    private var birds: [Bird] = [
        Bird(name: "Alden", image: "alden"),
        Bird(name: "Antoinette", image: "antoinette"),
        Bird(name: "Elvis", image: "elvis"),
        Bird(name: "Han", image: "han"),
        Bird(name: "Jennifer", image: "jennifer"),
        Bird(name: "Justin", image: "justin"),
        Bird(name: "Reade", image: "reade"),
        Bird(name: "Richie", image: "richie"),
        Bird(name: "Tiffany", image: "tiffany"),
        Bird(name: "Vin", image: "vin"),
        Bird(name: "Vivian", image: "vivian")
    ]

    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Birds"
        view.backgroundColor = UIColor.white
        setupTableView()
    }
    
    // MARK: - Set Up Views
    
    private func setupTableView() {
        tableView.register(BirdTableViewCell.self, forCellReuseIdentifier: BirdTableViewCell.reuse)
        tableView.dataSource = self
        tableView.delegate = self
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}

// MARK: - UITableView Delegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        <#code#>
//    }
}

// MARK: - UITableView DataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birds.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: BirdTableViewCell.reuse, for: indexPath) as? BirdTableViewCell {
            let bird = birds[indexPath.row]
            cell.configure(image: bird.image, birdName: bird.name)
            return cell
        }
         
        return UITableViewCell()
    }

    
}
