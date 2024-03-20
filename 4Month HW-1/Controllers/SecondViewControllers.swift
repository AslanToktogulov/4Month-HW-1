//
//  SecondViewControllers.swift
//  4Month HW-1
//
//  Created by Aslan Toktogulov on 20/3/24.
//

import UIKit


class SecondViewController: UIViewController {
    
    private lazy var myImagee: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "icons")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        setupUI()
    }
    
    private func setupUI() {
        
        view.addSubview(myImagee)
        
        NSLayoutConstraint.activate([
            myImagee.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myImagee.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            myImagee.widthAnchor.constraint(equalToConstant: 160),
            myImagee.heightAnchor.constraint(equalToConstant: 183)
        ])
        
    }
    
}
