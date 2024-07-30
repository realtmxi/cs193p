//
//  EditProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

class EditProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    private let saveButton = UIButton()
    
    private let profileImageView = UIImageView()
    private let nameLabel = UILabel()
    private let Bio = UILabel()
    private let hometownLabel = UILabel()
    private let hometownText = UITextField()
    private let MajorLabel = UILabel()
    private let MajorText = UITextField()
    
    
    // MARK: - Properties (data)
    private var nameText: String
    private var bioText: String

    
    // MARK: - viewDidLoad and init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Profile"
        view.backgroundColor = UIColor.a2.white
        setupProfileImage()
        setupNameLabel()
        setupBioLabel()
        setupHometownLabel()
        setupHometownText()
        setupMajorLabel()
        setupMajorText()
        setupSaveButton()
    }
    
    init(name: String, bio: String) {
        self.nameText = name
        self.bioText = bio
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set Up Views
    private func setupProfileImage(){
        profileImageView.image = UIImage(named: "profile")
        
        view.addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            profileImageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 32),
            profileImageView.widthAnchor.constraint(equalToConstant: 96),
            profileImageView.heightAnchor.constraint(equalToConstant: 96)
        ])
        
        profileImageView.layer.cornerRadius = 48
        profileImageView.layer.masksToBounds = true
    }
    
    private func setupNameLabel(){
        
        nameLabel.textColor = UIColor.a2.black
        nameLabel.font = .systemFont(ofSize: 24, weight: .semibold)
        nameLabel.text = nameText
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor),
            nameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 16)
        ])
        
    }
    
    private func setupBioLabel(){
        Bio.textColor = UIColor.a2.black
        Bio.font = .italicSystemFont(ofSize: 16)
        Bio.text = bioText
        Bio.numberOfLines = 0
        
        view.addSubview(Bio)
        Bio.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            Bio.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            Bio.leftAnchor.constraint(equalTo: nameLabel.leftAnchor)
        ])
    }
    
    private func setupHometownLabel() {
        hometownLabel.text = "Hometown"
        hometownLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        
        view.addSubview(hometownLabel)
        hometownLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hometownLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 40),
            hometownLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 32),
            
        ])
    }
    
    private func setupHometownText() {
        hometownText.layer.borderWidth = 1
        hometownText.layer.borderColor = UIColor.a2.silver.cgColor
        hometownText.layer.cornerRadius = 8
        
        view.addSubview(hometownText)
        hometownText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hometownText.topAnchor.constraint(equalTo: hometownLabel.bottomAnchor, constant: 4),
            hometownText.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 32),
            hometownText.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -32),
            hometownText.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    private func setupMajorLabel() {
        MajorLabel.text = "Major"
        MajorLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        
        view.addSubview(MajorLabel)
        MajorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            MajorLabel.topAnchor.constraint(equalTo: hometownText.bottomAnchor, constant: 24),
            MajorLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 32),
            
        ])
    }
    
    private func setupMajorText() {
        MajorText.layer.borderWidth = 1
        MajorText.layer.borderColor = UIColor.a2.silver.cgColor
        MajorText.layer.cornerRadius = 8
        
        view.addSubview(MajorText)
        MajorText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            MajorText.topAnchor.constraint(equalTo: MajorLabel.bottomAnchor, constant: 4),
            MajorText.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 32),
            MajorText.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -32),
            MajorText.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    private func setupSaveButton() {
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(UIColor.a2.white, for: .normal)
        saveButton.backgroundColor = UIColor.a2.ruby
        saveButton.layer.cornerRadius = 16
        saveButton.addTarget(self, action: #selector(popVC), for: .touchUpInside)
        
        view.addSubview(saveButton)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64),
            saveButton.widthAnchor.constraint(equalToConstant: 329),
            saveButton.heightAnchor.constraint(equalToConstant: 56),
        ])
    }
    
    @objc private func popVC() {
        // pop the EditProfileController
        navigationController?.popViewController(animated: true)
    }
}
