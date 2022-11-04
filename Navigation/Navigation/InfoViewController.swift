//
//  InfoViewController.swift
//  Navigation
//
//  Created by Христина Буянова on 03.11.2022.
//

import UIKit

class InfoViewController: UIViewController {

    var alertButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        view.addSubview(alertButton)
        alertButton.frame = CGRect(x: -250, y: 0, width: 150, height: 50)
        alertButton.center = view.center
        alertButton.layer.cornerRadius = 15
        alertButton.backgroundColor = .black
        alertButton.setTitle("Alert", for: .normal)
        alertButton.addTarget(self, action: #selector(alert), for: .touchUpInside)
        
        }
    
    @objc func alert() {
        showAlert()
    }
       
}
    
extension InfoViewController {
    func showAlert() {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        present(alertController, animated: true)
    }
}

    


