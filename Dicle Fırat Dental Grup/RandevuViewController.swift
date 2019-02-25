//
//  RandevuViewController.swift
//  Dicle Fırat(V1)
//
//  Created by Demo on 24.02.2019.
//  Copyright © 2019 Demo. All rights reserved.
//

import UIKit

class RandevuViewController: UIViewController {
    
    @IBOutlet weak var metinTextView: UITextView!
    
    @IBOutlet weak var nameTextField: UITextField!{
        didSet {
            
            nameTextField.tintColor = UIColor.lightGray
            nameTextField.setIcon(#imageLiteral(resourceName: "name"))
        }
    
    }
    @IBOutlet weak var emailTextField: UITextField! {
        didSet {
            
            emailTextField.tintColor = UIColor.lightGray
            emailTextField.setIcon(#imageLiteral(resourceName: "envelope"))
        }
        
    }
    @IBOutlet weak var phoneTextField: UITextField! {
        didSet {
            
            phoneTextField.tintColor = UIColor.lightGray
            phoneTextField.setIcon(#imageLiteral(resourceName: "phone-call"))
        }
        
    }
    @IBOutlet weak var randevuTextField: UITextField! {
        didSet {
            
            randevuTextField.tintColor = UIColor.lightGray
            randevuTextField.setIcon(#imageLiteral(resourceName: "calendar-with-a-clock-time-tools"))
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(RandevuViewController.handleTap))
        view.addGestureRecognizer(tap)
       
        
        


    }
    
  
    @objc func handleTap() {
        
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UITextField {
    
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always

        
        
    }
    
}

