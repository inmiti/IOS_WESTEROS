//
//  SecondViewController.swift
//  Westeros2
//
//  Created by ibautista on 3/9/23.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: -Outlets
    @IBOutlet weak var houseTargaryenButton: UIButton!
   
    @IBOutlet weak var houseStarkButton: UIButton!
    
    // MARK: - Model
    
    private let houses: [House] = [.stark, .targaryen]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let starkHouse = houses.first
        houseStarkButton.setTitle(starkHouse?.name, for: .normal) // Para nombrar los botones, renombramos titulo en el viewDidLoad.
        
        let targaryenHouse = houses.last
        houseTargaryenButton.setTitle(targaryenHouse?.name, for: .normal)
    }
    
    // MARK: - Actions

    @IBAction func didTapATargaryenButton(_ sender: Any) {
    }
    @IBAction func didTapStarkButton(_ sender: Any) {
    }
    
}
