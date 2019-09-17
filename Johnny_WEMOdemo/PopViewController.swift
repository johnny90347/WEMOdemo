//
//  PopViewController.swift
//  Johnny_WEMOdemo
//
//  Created by 梁鑫文 on 2019/8/10.
//  Copyright © 2019 Johhny. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPopView()
        
    }
    
    let textLabel:UILabel = {
        let label = UILabel()
        label.text = "Wikileaks began on Sunday November 28th publishing 251,287 leaked United States embassy cables, the largest set of confidential documents ever to be released into the public domain. The documents will give people around the world an unprecedented insight into US Government foreign activitie"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.backgroundColor = .white
        return label
    }()
    
    let actionButton:UIButton = {
       let button = UIButton(type: .system)
        button.setTitle("Action", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(actionButtonPressed), for: .touchUpInside)
        return button
    }()
    
    @objc func actionButtonPressed(){
        dismiss(animated: false, completion: nil)
    }
    
    
    func setupPopView(){
        
        
        view.addSubview(textLabel)
        view.addSubview(actionButton)
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.leadingAnchor.constraint(equalTo: textLabel.leadingAnchor).isActive = true
        actionButton.topAnchor.constraint(equalTo: textLabel.bottomAnchor).isActive = true
        actionButton.widthAnchor.constraint(equalTo: textLabel.widthAnchor).isActive = true
        actionButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    deinit {
        print("popDeinit")
    }
    

}
