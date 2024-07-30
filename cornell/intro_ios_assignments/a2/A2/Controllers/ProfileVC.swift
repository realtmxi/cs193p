//
//  ProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class ProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    private let profileHeaderLabel = UILabel()
    private let profileImageView = UIImageView()
    private let nameLabel = UILabel()
    private let Bio = UILabel()
    private let hometownLabel = UILabel()
    private let hometownImageView = UIImageView()
    private let MajorLabel = UILabel()
    private let MajorImageView = UIImageView()
    
    private let pushVCButton = UIButton()
    
    // MARK: - Properties (data)
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.a2.white
        setupProfileHeader()
        setupProfileImage()
        setupNameLabel()
        setupBioLabel()
        setupHometown()
        setupMajor()
        setupPushVCButton()
        
    }
    
    // MARK: - Set Up Views
    private func setupProfileHeader() {
        profileHeaderLabel.textColor = UIColor.a2.black
        profileHeaderLabel.font = .systemFont(ofSize: 16, weight: .medium)
        profileHeaderLabel.text = "Profile"
        
        view.addSubview(profileHeaderLabel)
        profileHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileHeaderLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            profileHeaderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    private func setupNameLabel(){
        
        nameLabel.textColor = UIColor.a2.black
        nameLabel.font = .systemFont(ofSize: 38, weight: .semibold)
        nameLabel.text = "Blair Yang"
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 16),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    private func setupProfileImage(){
        profileImageView.image = UIImage(named: "profile")
        
        view.addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: profileHeaderLabel.bottomAnchor, constant: 24),
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 128),
            profileImageView.heightAnchor.constraint(equalToConstant: 128)
        ])
        
        profileImageView.layer.cornerRadius = 64
        profileImageView.layer.masksToBounds = true
    }
    
    private func setupBioLabel(){
        Bio.textColor = UIColor.a2.black
        Bio.font = .italicSystemFont(ofSize: 16)
        Bio.text = "Never waste diamonds on a hoe"
        
        view.addSubview(Bio)
        Bio.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            Bio.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 24),
            Bio.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
    }
    
    private func setupHometown(){
        hometownImageView.image = UIImage(named: "home_icon")
        hometownLabel.text = "BeiJing, China"
        hometownLabel.font = .systemFont(ofSize: 14)
        
        view.addSubview(hometownImageView)
        view.addSubview(hometownLabel)
        
        hometownLabel.translatesAutoresizingMaskIntoConstraints = false
        hometownImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // constraints for hometownImage view
            hometownImageView.topAnchor.constraint(equalTo: Bio.bottomAnchor, constant: 48),
            hometownImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            hometownImageView.widthAnchor.constraint(equalToConstant: 24),
            hometownImageView.heightAnchor.constraint(equalToConstant: 24),
 
            // constraints for howtownLabel
            hometownLabel.topAnchor.constraint(equalTo: Bio.bottomAnchor, constant: 48),
            hometownLabel.centerYAnchor.constraint(equalTo: hometownImageView.centerYAnchor),
            hometownLabel.leadingAnchor.constraint(equalTo: hometownImageView.trailingAnchor, constant: 16),
        ])
    }
    
    private func setupMajor(){
        MajorImageView.image = UIImage(named:"major_icon")
        MajorLabel.text = "Computer Science"
        MajorLabel.font = .systemFont(ofSize: 14)
        
        view.addSubview(MajorImageView)
        view.addSubview(MajorLabel)
        
        MajorImageView.translatesAutoresizingMaskIntoConstraints = false
        MajorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // constraints for MajorImage view
            MajorImageView.topAnchor.constraint(equalTo: hometownImageView.bottomAnchor, constant: 24),
            MajorImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            MajorImageView.widthAnchor.constraint(equalToConstant: 24),
            MajorImageView.heightAnchor.constraint(equalToConstant: 24),

            // constraints for MajorLabel
            MajorLabel.centerYAnchor.constraint(equalTo: MajorImageView.centerYAnchor),
            MajorLabel.leadingAnchor.constraint(equalTo: MajorImageView.trailingAnchor, constant: 16),
            
        ])
    }
    
    private func setupPushVCButton() {
        pushVCButton.setTitle("Edit Profile", for: .normal)
        pushVCButton.setTitleColor(UIColor.a2.white, for: .normal)
        pushVCButton.backgroundColor = UIColor.a2.ruby
        pushVCButton.layer.cornerRadius = 16
        pushVCButton.addTarget(self, action: #selector(pushVC), for:.touchUpInside)
        
        view.addSubview(pushVCButton)
        pushVCButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pushVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushVCButton.topAnchor.constraint(equalTo: MajorLabel.bottomAnchor, constant: 200),
            pushVCButton.widthAnchor.constraint(equalToConstant: 329),
            pushVCButton.heightAnchor.constraint(equalToConstant: 56),
        ])
    }
    
    @objc private func pushVC() {
        let EditProfileVC = EditProfileVC()
        navigationController?.pushViewController(EditProfileVC, animated: true)
        print("Push VC button tapped")
    }
    

}
