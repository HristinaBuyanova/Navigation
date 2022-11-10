//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Христина Буянова on 07.11.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let profileHW: UIView = {
         let view = UIView()
         view.backgroundColor = .lightGray
         return view
     }()
    
    let avatar: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        imageView.image = UIImage(named: "avatar")
        imageView.layer.borderWidth = 3
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true
        return imageView
    }()
        
    let labelName: UILabel = {
        let name = UILabel()
        name.text = "Hipster cat"
        name.textColor = .black
        name.font = .systemFont(ofSize: 18, weight: .bold)
        return name
    }()
    
    let labelStatus: UILabel = {
        let status = UILabel()
        status.text = "Waiting for something..."
        status.textColor = .gray
        status.font = .systemFont(ofSize: 14, weight: .regular)
        return status
    }()
        
    let buttonShowStatus: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(Any?.self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
        
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(profileHW)
        profileHW.addSubview(avatar)
        profileHW.addSubview(labelName)
        profileHW.addSubview(labelStatus)
        profileHW.addSubview(buttonShowStatus)
        setupView()
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        profileHW.translatesAutoresizingMaskIntoConstraints = false
        labelName.translatesAutoresizingMaskIntoConstraints = false
        buttonShowStatus.translatesAutoresizingMaskIntoConstraints = false
        labelStatus.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileHW.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            profileHW.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            profileHW.widthAnchor.constraint(equalTo: self.widthAnchor),
            profileHW.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            
            labelName.leadingAnchor.constraint(equalTo: profileHW.leadingAnchor, constant: 132),
            labelName.topAnchor.constraint(equalTo: profileHW.topAnchor, constant: 27),
            
            labelStatus.leadingAnchor.constraint(equalTo: profileHW.leadingAnchor, constant: 132),
            labelStatus.bottomAnchor.constraint(equalTo: buttonShowStatus.topAnchor, constant: -34),
            
            buttonShowStatus.centerXAnchor.constraint(equalTo: profileHW.centerXAnchor),
            buttonShowStatus.widthAnchor.constraint(equalTo: profileHW.widthAnchor, constant: -32),
            buttonShowStatus.heightAnchor.constraint(equalToConstant: 50),
            buttonShowStatus.topAnchor.constraint(equalTo: profileHW.topAnchor, constant: 132)
        ])
    }
    
    @objc func buttonPressed() {
        print(labelStatus.text!)
    }
    
}
    
    
    
    
    
 
