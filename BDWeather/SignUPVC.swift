//
//  SignUPVC.swift
//  BDWeather
//
//  Created by apple on 3/4/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SignUPVC: UIViewController {
    
    @IBOutlet weak var lastText: UITextField!
    @IBOutlet weak var FirstText: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var Loctaion: UITextField!
    @IBOutlet weak var districtText: UITextField!
    @IBOutlet weak var genderText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var mobile: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var signupOutlet: UIButton!
    @IBOutlet weak var facebookOut: UIButton!
    @IBOutlet weak var googleOut: UIButton!
    @IBOutlet weak var signinout: UIButton! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewEdit()
        
        // Do any additional setup after loading the view.
    }
    
    func ViewEdit() {
        signupOutlet.layer.cornerRadius = 20
        signupOutlet.layer.shadowOffset = CGSize(width: 0, height: 1)
        signupOutlet.layer.shadowColor = UIColor.lightGray.cgColor
        signupOutlet.layer.shadowOpacity = 1
        signupOutlet.layer.shadowRadius = 5
        signupOutlet.layer.masksToBounds = false
        
        facebookOut.layer.cornerRadius = 20
        facebookOut.layer.shadowOffset = CGSize(width: 0, height: 1)
        facebookOut.layer.shadowColor = UIColor.lightGray.cgColor
        facebookOut.layer.shadowOpacity = 1
        facebookOut.layer.shadowRadius = 5
        facebookOut.layer.masksToBounds = false
        
        googleOut.layer.cornerRadius = 20
        googleOut.layer.shadowOffset = CGSize(width: 0, height: 1)
        googleOut.layer.shadowColor = UIColor.lightGray.cgColor
        googleOut.layer.shadowOpacity = 1
        googleOut.layer.shadowRadius = 5
        googleOut.layer.masksToBounds = false
        
        //custom user text
        FirstText.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named: "userPhotos")
        imageView.image = image
        FirstText.leftView = imageView
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:FirstText.frame.height - 1), size: CGSize(width: FirstText.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor.darkGray.cgColor
        FirstText.borderStyle = UITextField.BorderStyle.none
        FirstText.layer.addSublayer(bottomLine)
        FirstText.layer.cornerRadius = 17
        
        lastText.leftViewMode = UITextField.ViewMode.always
        let limageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let limage = UIImage(named: "userPhotos")
        limageView.image = limage
        lastText.leftView = limageView
        let lbottomLine = CALayer()
        lbottomLine.frame = CGRect(origin: CGPoint(x: 0, y:lastText.frame.height - 1), size: CGSize(width: lastText.frame.width, height:  1))
        lbottomLine.backgroundColor = UIColor.darkGray.cgColor
        lastText.borderStyle = UITextField.BorderStyle.none
        lastText.layer.addSublayer(lbottomLine)
        lastText.layer.cornerRadius = 17
        
        
        Loctaion.leftViewMode = UITextField.ViewMode.always
        let loimageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let loimage = UIImage(named: "location")
        loimageView.image = loimage
        Loctaion.leftView = loimageView
        let lobottomLine = CALayer()
        lobottomLine.frame = CGRect(origin: CGPoint(x: 0, y:Loctaion.frame.height - 1), size: CGSize(width: Loctaion.frame.width, height:  1))
        lobottomLine.backgroundColor = UIColor.darkGray.cgColor
        Loctaion.borderStyle = UITextField.BorderStyle.none
        Loctaion.layer.addSublayer(lobottomLine)
        Loctaion.layer.cornerRadius = 17
        
        districtText.leftViewMode = UITextField.ViewMode.always
        let diimageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let diimage = UIImage(named: "zip")
        diimageView.image = diimage
        districtText.leftView = diimageView
        let dibottomLine = CALayer()
        dibottomLine.frame = CGRect(origin: CGPoint(x: 0, y:districtText.frame.height - 1), size: CGSize(width: districtText.frame.width, height:  1))
        dibottomLine.backgroundColor = UIColor.darkGray.cgColor
        districtText.borderStyle = UITextField.BorderStyle.none
        districtText.layer.addSublayer(dibottomLine)
        districtText.layer.cornerRadius = 17
        
        genderText.leftViewMode = UITextField.ViewMode.always
        let geimageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let geimage = UIImage(named: "gender")
        geimageView.image = geimage
        genderText.leftView = geimageView
        let gebottomLine = CALayer()
        gebottomLine.frame = CGRect(origin: CGPoint(x: 0, y:genderText.frame.height - 1), size: CGSize(width: genderText.frame.width, height:  1))
        gebottomLine.backgroundColor = UIColor.darkGray.cgColor
        genderText.borderStyle = UITextField.BorderStyle.none
        genderText.layer.addSublayer(gebottomLine)
        genderText.layer.cornerRadius = 17
        
        emailText.leftViewMode = UITextField.ViewMode.always
        let eimageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let eimage = UIImage(named: "email")
        eimageView.image = eimage
        emailText.leftView = eimageView
        let ebottomLine = CALayer()
        ebottomLine.frame = CGRect(origin: CGPoint(x: 0, y:emailText.frame.height - 1), size: CGSize(width: emailText.frame.width, height:  1))
        ebottomLine.backgroundColor = UIColor.darkGray.cgColor
        emailText.borderStyle = UITextField.BorderStyle.none
        emailText.layer.addSublayer(ebottomLine)
        emailText.layer.cornerRadius = 17
        
        mobile.leftViewMode = UITextField.ViewMode.always
        let mimageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let mimage = UIImage(named: "Phone")
        mimageView.image = mimage
        mobile.leftView = mimageView
        let mbottomLine = CALayer()
        mbottomLine.frame = CGRect(origin: CGPoint(x: 0, y:mobile.frame.height - 1), size: CGSize(width: mobile.frame.width, height:  1))
        mbottomLine.backgroundColor = UIColor.darkGray.cgColor
        mobile.borderStyle = UITextField.BorderStyle.none
        mobile.layer.addSublayer(mbottomLine)
        mobile.layer.cornerRadius = 17
        
        //custom password text
        passwordText.leftViewMode = UITextField.ViewMode.always
        let pimageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let pimage = UIImage(named: "passwordPhoto")
        pimageView.image = pimage
        passwordText.leftView = pimageView
        let pbottomLine = CALayer()
        pbottomLine.frame = CGRect(origin: CGPoint(x: 0, y:passwordText.frame.height - 1), size: CGSize(width: passwordText.frame.width, height:  1))
        pbottomLine.backgroundColor = UIColor.darkGray.cgColor
        passwordText.borderStyle = UITextField.BorderStyle.none
        passwordText.layer.addSublayer(pbottomLine)
        passwordText.layer.cornerRadius = 17
    }
    
    @IBAction func facebookAction(_ sender: UIButton) {
        
    }
    
    @IBAction func signupAction(_ sender: UIButton) {
        
        if mobile.text == nil || passwordText.text == nil || FirstText.text == nil || lastText.text == nil ||
            districtText.text == nil || Loctaion.text == nil || genderText.text == nil || emailText.text == nil  {
            let alert = UIAlertController(title: "Sign UP Failed!", message: "Fill the content!", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        } else if mobile.text != nil && passwordText.text != nil {
            postdata()
        }
    }
    
    
    @IBAction func SignInAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginVC")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func googleAction(_ sender: UIButton) {
        
    }
    
    func postdata(){
        let parameters = ["FirstName": FirstText.text!,"LastName":lastText.text!,"mobile":mobile.text!,"email":emailText.text!,"gender":genderText.text!,"district":districtText.text!,"location":Loctaion.text!, "password": passwordText.text!] as [String : Any]
        //let parameters = ["mobile":"01742011644", "password": "123456"] as [String : Any]
        
        //create the url with URL
        let url = URL(string: "http://192.168.0.30/bdweather/API/registration.php")! //change the url
        
        //create the session object
        let session = URLSession.shared
        
        //now create the URLRequest object using the url object
        var request = URLRequest(url: url)
        request.httpMethod = "POST" //set http method as POST
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
        } catch let error {
            print(error.localizedDescription)
        }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                
                return
            }
            
            do {
                print(data)
                //create json object from data
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    // handle json...
                }
            } catch let error {
                
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
}
