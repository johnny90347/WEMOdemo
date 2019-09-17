//
//  CancelViewController.swift
//  Johnny_WEMOdemo
//
//  Created by 梁鑫文 on 2019/8/11.
//  Copyright © 2019 Johhny. All rights reserved.
//

import UIKit

class CancelViewController: UIViewController {

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
        button.setTitle("Ok", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01258747466, green: 0.8194137216, blue: 0.5288617015, alpha: 1)
        button.addTarget(self, action: #selector(actionButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
    let cancelButton:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Cancel", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01258747466, green: 0.8194137216, blue: 0.5288617015, alpha: 1)
        button.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
        return button
    }()
    
    let separateView:UIView = {
       
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        return view
    }()
    
    
    @objc func actionButtonPressed(){
        performSegue(withIdentifier: "popMoreCancel", sender: self)
        
    }
    
    @objc func cancelButtonPressed (){
        dismiss(animated: false, completion: nil)
    }
    
    
    
    
    private func setupPopView(){
        
        
        view.addSubview(textLabel)
        view.addSubview(actionButton)
        view.addSubview(cancelButton)
        view.addSubview(separateView)
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.leadingAnchor.constraint(equalTo: textLabel.leadingAnchor).isActive = true
        actionButton.topAnchor.constraint(equalTo: textLabel.bottomAnchor).isActive = true
        actionButton.widthAnchor.constraint(equalTo: textLabel.widthAnchor).isActive = true
        actionButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        cancelButton.widthAnchor.constraint(equalTo: textLabel.widthAnchor).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        cancelButton.topAnchor.constraint(equalTo: actionButton.bottomAnchor).isActive = true
        cancelButton.leadingAnchor.constraint(equalTo: actionButton.leadingAnchor).isActive = true
        
        separateView.translatesAutoresizingMaskIntoConstraints = false
        separateView.widthAnchor.constraint(equalTo: textLabel.widthAnchor, multiplier: 0.85).isActive = true
        separateView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separateView.centerXAnchor.constraint(equalTo: textLabel.centerXAnchor).isActive = true
        separateView.topAnchor.constraint(equalTo: actionButton.bottomAnchor, constant: -0.5).isActive = true
        
    }
    
    deinit {
        print("popDeinit")
    }
    

  
}
