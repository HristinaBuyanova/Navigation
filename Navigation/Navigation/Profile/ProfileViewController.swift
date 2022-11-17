//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Христина Буянова on 03.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    let profileHeaderView = ProfileHeaderView()
    
    var buttonTitleChange: UIButton = {
        let buttonForTitle = UIButton()
        buttonForTitle.backgroundColor = .blue
        buttonForTitle.setTitle("Change Title", for: .normal)
        buttonForTitle.setTitleColor(UIColor.white, for: .normal)
        buttonForTitle.layer.cornerRadius = 4
        buttonForTitle.layer.shadowOffset = CGSize(width: 4, height: 4)
        buttonForTitle.layer.shadowRadius = 4
        buttonForTitle.layer.shadowColor = UIColor.black.cgColor
        buttonForTitle.layer.shadowOpacity = 0.7
        buttonForTitle.layer.masksToBounds = false
        buttonForTitle.addTarget(Any?.self, action: #selector(titleChange), for: .touchUpInside)
        buttonForTitle.translatesAutoresizingMaskIntoConstraints = false
        return buttonForTitle
    }()
    
    @objc func titleChange() {
            profileHeaderView.fullNameLabel.text = "New name"
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        profileHeaderView.backgroundColor = .systemGray
        title = "Profile"
        view.addSubview(profileHeaderView)
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonTitleChange)
        let safeArea = view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            profileHeaderView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 220),
            
            buttonTitleChange.heightAnchor.constraint(equalToConstant: 50),
            buttonTitleChange.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            buttonTitleChange.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            buttonTitleChange.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        ])
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeaderView.frame = view.frame
    }
    
}
