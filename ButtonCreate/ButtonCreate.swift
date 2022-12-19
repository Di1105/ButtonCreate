//
//  ViewController.swift
//  ButtonCreate
//
//  Created by Dilara Elçioğlu on 19.12.2022.
//

import UIKit
import SnapKit

class ButtonCreate: UIViewController {

    lazy var btnA = UIButton()
    lazy var btnB = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonUI()
    }
    
    func setupButtonUI(){
        
        view.addSubview(btnA)
        view.addSubview(btnB)
        design()
        buttonA()
        buttonB()
    }
    
    private func design(){
        btnA.backgroundColor = .green
        btnA.setTitle("YEŞİL", for: .normal)
        btnA.setTitleColor(.white, for: .normal)
        btnA.addTarget(self, action: #selector(myfuncA), for: .touchUpInside)
        
        btnB.setTitleColor(.white, for: .normal)
        btnB.layer.cornerRadius = 80
        btnB.backgroundColor = .blue
        btnB.setTitle("WEB", for: .normal)
        btnB.addTarget(self, action: #selector(myfuncB), for: .touchUpInside)
    }
    
    
    @objc func myfuncA(){
        print("clicked")
        btnA.setTitle("KIRMIZI", for: .normal)
        btnA.setTitleColor(.white, for: .normal)
        btnA.backgroundColor = .red
    }
    
    
    @objc func myfuncB() {
        print("clicked")
        if let url = URL(string: "https://www.geyimburada.com") {
            UIApplication.shared.open(url)
        }
        
    }

}

extension ButtonCreate {
    private func buttonA(){
        btnA.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
            make.width.equalTo(160)
        }
    }
    
    private func buttonB(){
        btnB.snp.makeConstraints { make in
            make.top.equalTo(btnA.snp.bottom).offset(40)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
            make.width.equalTo(160)
        }
    }
}
