//
//  ViewController.swift
//  DI
//
//  Created by 潘博石 on 09/04/2024.
//

import UIKit

struct Course {
    var name: String
}

class ViewController: UIViewController {
    
    let courses = [Course]()
    
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Tap me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 250, height: 50)
        button.backgroundColor = .systemBlue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(button)
        button.center = view.center
    }
    
    // to get api response of a list of course
    // https://iosacademy.io/api/v1/courses/index.php

}

