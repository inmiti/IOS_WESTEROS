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
    
    // MARK: - Selected Delegate
    
    var delegate: CharacterSelectedDelegate? // Se pone opcional y nulo porque no va a existir una instancia cuando inicialicemos la view.
    
    
    // MARK: - Model
    
    private let characters: [Character] = [.danaerys, .jon]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let danaerys = characters.first
        houseStarkButton.setTitle(danaerys?.fullName, for: .normal) // Para nombrar los botones, renombramos titulo en el viewDidLoad.
        
        let jon = characters.last
        houseTargaryenButton.setTitle(jon?.fullName, for: .normal)
    }
    
    // MARK: - Actions

    @IBAction func didTapATargaryenButton(_ sender: Any) {
        if let danaerys = characters.last {
            delegate?.didSelect(danaerys)
            dismiss(animated: true)
        }
    }
    
    @IBAction func didTapStarkButton(_ sender: Any) {
        if let jon = characters.first {
            delegate?.didSelect(jon) //Seleccionamos la casa stark
            dismiss(animated: true)     // Volvemos a la vista anterior
        }
    }
    
    
}
