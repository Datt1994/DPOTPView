//
//  ViewController.swift
//  DPOTPView
//
//  Created by datt on 13/11/19.
//  Copyright © 2019 datt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtDPOTPView: DPOTPView!
    var txtOTPView: DPOTPView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtDPOTPView.dpOTPViewDelegate = self
        txtDPOTPView.fontTextField = UIFont.systemFont(ofSize: 40)
        txtDPOTPView.textEdgeInsets = UIEdgeInsets(top: 0, left: -1, bottom: 0, right: 0)
        txtDPOTPView.editingTextEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if txtOTPView == nil {
            txtOTPView = DPOTPView(frame: CGRect(x: (self.view.frame.width - 250)/2, y: txtDPOTPView.frame.origin.y + 50, width: 250, height: 60))
            txtOTPView.count = 5
            txtOTPView.spacing = 10
            txtOTPView.fontTextField = UIFont(name: "HelveticaNeue-Bold", size: CGFloat(25.0))!
            txtOTPView.dismissOnLastEntry = true
            txtOTPView.borderColorTextField = .black
            txtOTPView.selectedBorderColorTextField = .blue
            txtOTPView.borderWidthTextField = 2
            txtOTPView.backGroundColorTextField = .lightGray
            txtOTPView.cornerRadiusTextField = 8
            txtOTPView.isCursorHidden = true
            //        txtOTPView.isSecureTextEntry = true
            //        txtOTPView.isBottomLineTextField = true
            //        txtOTPView.isCircleTextField = true
            view.addSubview(txtOTPView)
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        txtDPOTPView.text = "1234"
//        print(txtDPOTPView.text ?? "")
//        print(txtDPOTPView.validate())
//        _ = txtDPOTPView.becomeFirstResponder()
    }
}

extension ViewController : DPOTPViewDelegate { 
    func dpOTPViewAddText(_ text: String, at position: Int) {
        print("addText:- " + text + " at:- \(position)" )
    }
    
    func dpOTPViewRemoveText(_ text: String, at position: Int) {
        print("removeText:- " + text + " at:- \(position)" )
    }
    
    func dpOTPViewChangePositionAt(_ position: Int) {
        print("at:-\(position)")
    }
    func dpOTPViewBecomeFirstResponder() {
        
    }
    func dpOTPViewResignFirstResponder() {
        
    }
}

