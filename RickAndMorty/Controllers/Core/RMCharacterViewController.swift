//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by L G on 8. 4. 2025..
//

import UIKit

/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
//        let request = RMRequest(
//            endpoint: .character,
//            queryParameters: [
//                URLQueryItem(name: "name", value: "rick"),
//                URLQueryItem(name: "status", value: "alive")
//            ]
//        )
//        print(request.url)
//        
//        RMService.shared.execute(request,
//                                 expecting: RMCharacter.self) {
//            result in
//        }
        

        // Do any additional setup after loading the view.
    }
    


}
