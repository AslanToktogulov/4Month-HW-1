//
//  ThirdViewController.swift
//  4Month HW-1
//
//  Created by Aslan Toktogulov on 20/3/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private lazy var singUpLabel: UILabel = {
            let label = UILabel()
            label.text = "SingUP"
            label.font = .systemFont(ofSize: 16, weight: .bold)
            label.textColor = .black
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupSingUpLabel()
    }
    private func setupSingUpLabel() {
        view.addSubview(singUpLabel)
        
        NSLayoutConstraint.activate([
            singUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            singUpLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}
