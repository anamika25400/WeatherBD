//
//  ViewController.swift
//  BDWeather
//
//  Created by apple on 3/3/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signUpOutlet: UIButton!
    @IBOutlet weak var singInOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buttonEdit()
        
        self.navigationController?.navigationBar.tintColor = UIColor.darkGray
        //
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    func buttonEdit(){
        singInOutlet.layer.cornerRadius = 20
        signUpOutlet.layer.cornerRadius = 20
        
        singInOutlet.layer.shadowOffset = CGSize(width: 0, height: 1)
        singInOutlet.layer.shadowColor = UIColor.lightGray.cgColor
        singInOutlet.layer.shadowOpacity = 1
        singInOutlet.layer.shadowRadius = 5
        singInOutlet.layer.masksToBounds = false
        
        signUpOutlet.layer.shadowOffset = CGSize(width: 0, height: 1)
        signUpOutlet.layer.shadowColor = UIColor.lightGray.cgColor
        signUpOutlet.layer.shadowOpacity = 1
        signUpOutlet.layer.shadowRadius = 5
        signUpOutlet.layer.masksToBounds = false
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SignUPVC")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func signInAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginVC")
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

