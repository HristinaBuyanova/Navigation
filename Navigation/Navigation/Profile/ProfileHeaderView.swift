//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Христина Буянова on 07.11.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
//    let profileHW: UIView = {
//        let view = UIView()
//        view.backgroundColor = .lightGray
//        return view
//    }()

    let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "avatar")
        imageView.layer.borderWidth = 3
        imageView.layer.cornerRadius = 100/2
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let fullNameLabel: UILabel = {
        let name = UILabel()
        name.text = "Hipster cat"
        name.textColor = .black
        name.font = .systemFont(ofSize: 18, weight: .bold)
        name.textAlignment = .center
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()

    let statusLabel: UILabel = {
        let status = UILabel()
        status.text = "Waiting for something..."
        status.textColor = .gray
        status.font = .systemFont(ofSize: 14, weight: .regular)
        status.textAlignment = .center
        status.numberOfLines = 0
        status.contentMode = .scaleToFill
        status.translatesAutoresizingMaskIntoConstraints = false
        return status
    }()

    let setStatusButton: UIButton = {
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
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let statusTextField: UITextField = {
        let text = UITextField ()
        text.backgroundColor = .white
        text.font = .systemFont(ofSize: 15, weight: .regular)
        text.textColor = .black
        text.layer.cornerRadius = 12
        text.borderStyle = .roundedRect
        text.layer.borderWidth = 1
        text.clipsToBounds = true
        text.placeholder = "Your status ... "
        text.keyboardType = .default
        text.clearButtonMode = .whileEditing
        text.contentHorizontalAlignment = .center
        text.returnKeyType = .done
        text.addTarget(Any?.self, action: #selector(statusChange), for: .editingChanged)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(avatarImageView)
        self.addSubview(fullNameLabel)
        self.addSubview(statusLabel)
        self.addSubview(setStatusButton)
        self.addSubview(statusTextField)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupView() {
        let safeArea = self.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            avatarImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -116),
            
            fullNameLabel.widthAnchor.constraint(equalTo: setStatusButton.widthAnchor),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 50),
            fullNameLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 27),
            fullNameLabel.centerXAnchor.constraint(equalTo: setStatusButton.centerXAnchor),
            
            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
            setStatusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            setStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            statusLabel.heightAnchor.constraint(equalToConstant: 100),
            statusLabel.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -34),
            statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
            statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -16),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            statusTextField.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16)
        ])
    }

    @objc func buttonPressed() {
        statusLabel.text = statusTextField.text
    }
    
    @objc func statusChange(_ textField: UITextField) {
           
        }
    
}
