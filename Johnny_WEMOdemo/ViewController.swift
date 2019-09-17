//
//  ViewController.swift
//  Johnny_WEMOdemo
//
//  Created by 梁鑫文 on 2019/8/10.
//  Copyright © 2019 Johhny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let actionButton:UIButton = {
       let button = UIButton(type: .system)
        button.setTitle("Action", for: .normal)
        button.tintColor = .blue
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(actionButtonPressed), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    let cancelButton:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Cancel", for: .normal)
        button.tintColor = .blue
        button.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
        button.backgroundColor = .yellow
        return button
    }()
    
    
    let confirmButton:UIButton = {
       let button = UIButton(type: .system)
        button.setTitle("confirm", for: .normal)
        button.tintColor = .blue
        button.addTarget(self, action: #selector(confirmButtonPressed), for: .touchUpInside)
        button.backgroundColor = .red
        return button
    }()
    
    @objc func actionButtonPressed(){
       performSegue(withIdentifier: "pop", sender: self)
        
    }
    
    
    @objc func cancelButtonPressed(){
        performSegue(withIdentifier: "popCancel", sender: self)
    }
    
    
    @objc func confirmButtonPressed(){
        performSegue(withIdentifier: "popconfirm", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    
    func setupView(){
        
        view.addSubview(cancelButton)
        
        view.addSubview(actionButton)
        
        view.addSubview(confirmButton)
        
        
        
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        cancelButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        cancelButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        cancelButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.topAnchor.constraint(equalTo: cancelButton.topAnchor).isActive = true
        actionButton.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor, constant: -20).isActive = true
        actionButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        actionButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.topAnchor.constraint(equalTo: cancelButton.topAnchor).isActive = true
        confirmButton.leadingAnchor.constraint(equalTo: cancelButton.trailingAnchor, constant: 20).isActive = true
        confirmButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        confirmButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        
    }


}

