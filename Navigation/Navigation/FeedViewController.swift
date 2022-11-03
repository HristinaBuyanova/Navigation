//
//  FeedViewController.swift
//  Navigation
//
//  Created by Христина Буянова on 03.11.2022.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        let uiButton = UIButton()
        self.view.addSubview(uiButton)
        
        uiButton.setTitle("Перейти в ленту", for: .normal)
        uiButton.translatesAutoresizingMaskIntoConstraints = false
        uiButton.addAction(UIAction(handler: {_ in
            let vc = PostViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }), for: .touchUpInside)
       
        NSLayoutConstraint.activate([
            uiButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            uiButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            uiButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            uiButton.heightAnchor.constraint(equalToConstant: 30)
        ])

        
    }
}

