//
//  MoreCancelViewController.swift
//  Johnny_WEMOdemo
//
//  Created by 梁鑫文 on 2019/8/11.
//  Copyright © 2019 Johhny. All rights reserved.
//

import UIKit



extension String {
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        
        let boundingBox = self.boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedString.Key.font: font], context: nil)
        
        return boundingBox.height
    }
}

class MoreCancelViewController: UIViewController {

    
    @IBOutlet weak var myTextField: UITextField!
    
   
    @IBAction func inputButtonPressed(_ sender: UIButton) {
        
        
        string = myTextField.text!
        textView.text = string
        let height =  string.heightWithConstrainedWidth(width: (view.frame.width) * 0.7, font: .boldSystemFont(ofSize: 22))

        if height >= (view.frame.height) * 0.8 {
            
            textHeightConstraintOne.isActive = true
            textHeightConstraintTwo.isActive = false
        }else{
            textHeightConstraintOne.isActive = false
            textHeightConstraintTwo.isActive = true
            textHeightConstraintTwo.constant = height
        }

        view.layoutIfNeeded()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
         setupPopView()
        textView.text = string
    }
    

//    let textLabel:UILabel = {
//        let label = UILabel()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.backgroundColor = .white
//        return label
//    }()
    
    
    
    var string = " Wikileaks began on Sunday November 28th publishing 251,287 leaked United States embassy cables, the largest set of confidential documents ever to be released into the public domain. The documents will give people around the world an unprecedented insight into US Government foreign activiffvdkflgkdlgkdlgembassy cables will be released in stages over the next few months. The subject matter of these cables is of such importance, and the geographical spread so broad, that to do otherwise would not do this material justiceembassy cables will be released in stages over the next few months. The subject matter of these cables is of such importance, and the geographical spread so broad, that to do otherwise would not do this material justiceembassy cables will be released in stages over the next few months. The subject matter of these cables is of such importance, and the geographical spread so broad, that to do otherwise would not do this material justice importance, and the geographical spread so broad, that to do otherwise would not do this material justiceembassy cables will be released in stages over the next few months. The subject matter of these cables is of such importance, and the geographical spread so broad, that to do otherwise would not do this material justice"
    
    
    
    let textView:UITextView = {
       let textView = UITextView()
        textView.textAlignment = .center
        textView.backgroundColor = .white
        textView.font = UIFont.boldSystemFont(ofSize: 20)
        return textView
    }()
    
    let actionButton:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("confirm", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.01258747466, green: 0.8194137216, blue: 0.5288617015, alpha: 1)
        button.addTarget(self, action: #selector(actionButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
   
    
    
    @objc func actionButtonPressed(){
       let rootVC = self.view.window?.rootViewController
        rootVC?.dismiss(animated: false, completion: nil)
        
        
    }
    
   
    var textHeightConstraintOne:NSLayoutConstraint!
    var textHeightConstraintTwo:NSLayoutConstraint!
    var textHeightConstraintThree:NSLayoutConstraint!
    
    private func setupPopView(){
        
        
        view.addSubview(textView)
        view.addSubview(actionButton)
       
        
        
       let height =  string.heightWithConstrainedWidth(width: (view.frame.width) * 0.7, font: .boldSystemFont(ofSize: 22))
        
        print(height)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        
        textHeightConstraintOne =  textView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.8)
        textHeightConstraintTwo = textView.heightAnchor.constraint(equalToConstant: height)
        if height >= (view.frame.height) * 0.8 {
           
            textHeightConstraintOne.isActive = true
            textHeightConstraintTwo.isActive = false
        }else{
          textHeightConstraintOne.isActive = false
            textHeightConstraintTwo.isActive = true
        }
        

        
  
        
       
       
        
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.leadingAnchor.constraint(equalTo: textView.leadingAnchor).isActive = true
        actionButton.topAnchor.constraint(equalTo: textView.bottomAnchor).isActive = true
        actionButton.widthAnchor.constraint(equalTo: textView.widthAnchor).isActive = true
        actionButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        actionButton.heightAnchor.constraint(lessThanOrEqualTo: view.heightAnchor, multiplier: 0.8, constant: height)
        
        
    }
    
    deinit {
        print("popDeinit")
    }
    

   

}
