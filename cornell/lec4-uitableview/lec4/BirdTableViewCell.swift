//
//  BirdTableViewCell.swift
//  lec4
//
//  Created by 田沐昕（实习） on 2024/7/30.
//

import UIKit

class BirdTableViewCell: UITableViewCell {
    // MARK: - Properties (views)
    private let birdImage = UIImageView()
    private let birdNameLabel = UILabel()
    
    static let reuse = "BirdTableViewReuse"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupBirdImage()
        setupBirdNameLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(image: String, birdName: String) {
        birdImage.image = UIImage(named: image)
        birdNameLabel.text = birdName
    }
    
    // MARK: - Stup up views
    private func setupBirdImage() {
        birdImage.contentMode = .scaleAspectFit
        
        contentView.addSubview(birdImage)
        birdImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            birdImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            birdImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            birdImage.widthAnchor.constraint(equalToConstant: 64)
        ])
    }
    
    private func setupBirdNameLabel() {
        birdNameLabel.textColor = .label
        birdNameLabel.font = .systemFont(ofSize: 20, weight: .medium)
        contentView.addSubview(birdNameLabel)
        birdNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            birdNameLabel.leadingAnchor.constraint(equalTo: birdImage.trailingAnchor, constant: 8),
            birdNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            birdNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    
}
