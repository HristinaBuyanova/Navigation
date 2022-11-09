//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Христина Буянова on 03.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Profile"
        
        addSubview()
        
        
        
    }
    
    func addSubview () {
        let profileHeaderView = ProfileHeaderView()
        view.addSubview(profileHeaderView)
        profileHeaderView.frame = view.frame
        
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
    }
    

}
