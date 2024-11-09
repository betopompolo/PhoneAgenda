//
//  ViewController.swift
//  PhoneAgenda
//
//  Created by Adalberto Nassu Pompolo on 09/11/24.
//

import UIKit

let mockList = ["Adalberto", "Nassu", "Pompolo"]
let mockUserName = "Maria Vitoria Nassu Pompolo"

class ViewController: UIViewController {
    @IBOutlet weak var initialsLabel: UILabel!
    @IBOutlet weak var initialsContainerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialsContainerView.layer.borderWidth = 1
        initialsContainerView.layer.borderColor = UIColor.white.cgColor
        initialsContainerView.layer.cornerRadius = initialsContainerView.frame.height / 2
        nameLabel.text = mockUserName
        initialsLabel.text = getInitials(from: mockUserName)
    }
    
    private func getInitials(from name: String) -> String {
        let names = name.split(separator: " ")
        if let firstLetter = names.first?.first,
            let secondLetter = names.last?.first {
            return "\(firstLetter)\(secondLetter)"
        }
        return ""
    }
}
