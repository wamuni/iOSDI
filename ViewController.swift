//
//  ViewController.swift
//  DI
//
//  Created by 潘博石 on 09/04/2024.
//

import UIKit
import DIUIKit
import APIKit

extension APICaller: DataFetchable {}

class ViewController: UIViewController {
    
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
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    // to get api response of a list of course
    // https://iosacademy.io/api/v1/courses/index.php
    
    @objc private func didTapButton() {
        let vc = CourseViewController(dataFetchable: APICaller.shared)
        present(vc, animated: true)
    }

}

