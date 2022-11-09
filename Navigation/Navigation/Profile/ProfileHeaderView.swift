//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Христина Буянова on 07.11.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let backgroundView: UIView = {
            let view = UIView()
            view.backgroundColor = .lightGray
            return view
        }()
    
    
    var avatar: UIImageView = {
        let imageFrame = CGRect(x: 16, y: 16, width: 100, height: 100)
        let imageView = UIImageView(image: UIImage(named: "avatar.jpg"))
        imageView.frame = imageFrame
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = imageView.frame.width/2
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let name: UILabel = {
        let label = UILabel()
        return label
    } ()
   
    
    
//let avatarFrame = CGRect(x: 16, y: 16, width: 100, height: 100)
//
//    var avatar = UIImageView(image: UIImage(named: "avatar.jpg"))
//
    
    
//    avatar.layer.cornerRadius = 0.5
//    avatar.layer.borderWidth = 3
//    avatar.layer.borderColor =
//
    
    
    
    
//    avatar.hitTest(<#T##CGPoint#>, with: <#T##UIEvent?#>)
    
    
    
    
    
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}


//let avatarView: UIImageView = {
//        let avatar = UIImageView()
//        avatar.frame = CGRect(x: 16, y: 16, width: 120, height: 120)
//        avatar.layer.borderWidth = 3
//        avatar.layer.borderColor = UIColor.white.cgColor
//        avatar.layer.cornerRadius = avatar.frame.width / 2
//        avatar.image = UIImage(named: "img")
//        avatar.clipsToBounds = true
//        return avatar
//    }()
//
//    let labelName: UILabel = {
//        let label = UILabel()
//        label.text = "Hipster cat"
//        label.font = .systemFont(ofSize: 18, weight: .bold)
//        return label
//    }()
//
//    let buttonStatus: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .systemBlue
//        button.setTitle("Show status", for: .normal)
//        button.setTitleColor(UIColor.white, for: .normal)
//        button.layer.cornerRadius = 4
//        button.layer.shadowOffset = CGSize(width: 4, height: 4)
//        button.layer.shadowRadius = 4
//        button.layer.shadowColor = UIColor.black.cgColor
//        button.layer.shadowOpacity = 0.7
//        button.addTarget(Any?.self, action: #selector(buttonStatusAction), for: .touchUpInside)
//        return button
//    }()
//
//    let labelStatus: UILabel = {
//        let status = UILabel()
//        status.text = "Waiting for something..."
//        status.font = .systemFont(ofSize: 14, weight: .regular)
//        status.textColor = .gray
//        return status
//    }()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.addSubview(mainView)
//        mainView.addSubview(avatarView)
//        mainView.addSubview(labelName)
//        mainView.addSubview(buttonStatus)
//        setupView()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func setupView() {
//        mainView.translatesAutoresizingMaskIntoConstraints = false
//        labelName.translatesAutoresizingMaskIntoConstraints = false
//        buttonStatus.translatesAutoresizingMaskIntoConstraints = false
//        labelStatus.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            mainView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            mainView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            mainView.widthAnchor.constraint(equalTo: self.widthAnchor),
//            mainView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
//
//            labelName.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 160),
//            labelName.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 27),
//
//            buttonStatus.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
//            buttonStatus.widthAnchor.constraint(equalTo: mainView.widthAnchor, constant: -32),
//            buttonStatus.heightAnchor.constraint(equalToConstant: 50),
//            buttonStatus.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 152)
//        ])
//    }
//
//    @objc func buttonStatusAction() {
//        mainView.addSubview(labelStatus)
//        labelStatus.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            labelStatus.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 160),
//            labelStatus.bottomAnchor.constraint(equalTo: buttonStatus.topAnchor, constant: -34)
//        ])
//        print(labelStatus.text!)
//    }
//
//}
