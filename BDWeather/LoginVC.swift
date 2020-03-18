//
//  LoginVC.swift
//  BDWeather
//
//  Created by apple on 3/3/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var signInOutlet: UIButton!
    @IBOutlet weak var facebookOut: UIButton!
    @IBOutlet weak var googleOut: UIButton!
    @IBOutlet weak var forgetOut: UIButton!
    @IBOutlet weak var createout: UIButton!
    @IBOutlet weak var rightout: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewEdit()
        
        // Do any additional setup after loading the view.
    }
    
    func ViewEdit() {
        rightout.layer.borderWidth = 1
        rightout.layer.borderColor = UIColor.darkGray.cgColor
        rightout.layer.backgroundColor = UIColor.white.cgColor
        signInOutlet.layer.cornerRadius = 20
        signInOutlet.layer.shadowOffset = CGSize(width: 0, height: 1)
        signInOutlet.layer.shadowColor = UIColor.lightGray.cgColor
        signInOutlet.layer.shadowOpacity = 1
        signInOutlet.layer.shadowRadius = 5
        signInOutlet.layer.masksToBounds = false
        
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
        userText.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named: "userPhotos")
        imageView.image = image
        userText.leftView = imageView
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(origin: CGPoint(x: 0, y:userText.frame.height - 1), size: CGSize(width: userText.frame.width, height:  1))
        bottomLine.backgroundColor = UIColor.darkGray.cgColor
        userText.borderStyle = UITextField.BorderStyle.none
        userText.layer.addSublayer(bottomLine)
        userText.layer.cornerRadius = 17
        
        //custom password text
        
        passwordText.leftViewMode = UITextField.ViewMode.always
        let pimageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let pimage = UIImage(named: "passwordPhoto")
        pimageView.image = pimage
        passwordText.leftView = pimageView
        let pbottomLine = CALayer()
        pbottomLine.frame = CGRect(origin: CGPoint(x: 0, y:userText.frame.height - 1), size: CGSize(width: userText.frame.width, height:  1))
        pbottomLine.backgroundColor = UIColor.darkGray.cgColor
        passwordText.borderStyle = UITextField.BorderStyle.none
        passwordText.layer.addSublayer(pbottomLine)
        passwordText.layer.cornerRadius = 17
    }
    
    @IBAction func facebookAction(_ sender: UIButton) {
        
    }
    
    @IBAction func signinAction(_ sender: UIButton) {
        postdata()
        
    }
    
    @IBAction func forgetAction(_ sender: UIButton) {
        
    }
    
    @IBAction func createAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SignUPVC")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func googleAction(_ sender: UIButton) {
        
    }
    
    func postdata(){
        let parameters = ["mobile":userText.text!,"password": passwordText.text!] as [String : Any]
        //let parameters = ["mobile":"017 42011644", "password": "123456"] as [String : Any]
        
        //create the url with URL
        let url = URL(string: "http://192.168.0.30/bdweather/API/login.php")! //change the url
        
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
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
