//
//  IntroVC.swift
//  StartApp
//
//  Created by ziad on 10/10/2021.
//

import UIKit

class IntroVC: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var mainTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        mainTitle.font = DesignSystem.TypoGraphy.title.font
        mainTitle.textColor = .white
        self.title = " "
        dismissKeyboard()
        [firstLabel, secondLabel].forEach{$0 .font = DesignSystem.TypoGraphy.content.font}
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)

    }
    @IBAction func goActionBtn(_ sender: Any) {
        //dependency injection
        let destination = SecondVC()
        //show(destination, sender: nibName)
        navigationController?.pushViewController(destination, animated: true)
    }
    
}
