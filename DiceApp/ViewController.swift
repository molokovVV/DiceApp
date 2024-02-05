//
//  ViewController.swift
//  DiceApp
//
//  Created by Виталик Молоков on 05.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let backGroundImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "BackGroundColorGreen")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "DiceLogo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let diceOneImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "DiceOne")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let diceTwoImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "DiceTwo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var rollButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.titleLabel?.font = .systemFont(ofSize: 32)
        button.layer.cornerRadius = 12
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 71/255, 
                                         green: 128/255, 
                                         blue: 200/255, 
                                         alpha: 1)
        button.setTitle("Roll", for: .normal)
        button.addTarget(self, action: #selector(rollButtonTaped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backGroundImageView)
        backGroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backGroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backGroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backGroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        view.addSubview(logoImageView)
        logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, 
                                           constant: 30).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        view.addSubview(diceOneImageView)
        diceOneImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        diceOneImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        diceOneImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        diceOneImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(diceTwoImageView)
        diceTwoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        diceTwoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        diceTwoImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        diceTwoImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(rollButton)
        rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rollButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -120).isActive = true
        rollButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        rollButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    @objc func rollButtonTaped() {
        let arrayDice = ["DiceOne", 
                         "DiceTwo", 
                         "DiceThree", 
                         "DiceFour", 
                         "DiceFive", 
                         "DiceSix"]
        diceOneImageView.image = UIImage(named: arrayDice.randomElement() ?? "") 
        diceTwoImageView.image = UIImage(named: arrayDice.randomElement() ?? "")
    }
}


