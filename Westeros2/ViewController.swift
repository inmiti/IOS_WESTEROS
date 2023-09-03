//
//  ViewController.swift
//  Westeros2
//
//  Created by ibautista on 3/9/23.
//

import UIKit

private let segueIdentifier = "ksecondViewControllerSegue"

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var characterLabel: UILabel!
    
    // MARK: - Model
    private var selectedHouse: House? {
        didSet {
            if let house = selectedHouse {
                characterLabel.text = house.name // Renombramos el label
            }
        }
    }
        
        // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedHouse = .stark
            
        }
        
        // MARK: - Segue
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
                
        if segue.identifier == segueIdentifier,
            let secondViewController = segue.destination as? SecondViewController { //mediante la propiedad segue accedemos al identificador
                secondViewController.delegate = self
            }
        }
    }
    
    // MARK: House Selected Delegate extension:
extension ViewController: CharacterSelectedDelegate {
    func didSelect(_ character: Character) {
        selectedHouse = character.house
    }
}


