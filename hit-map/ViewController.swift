//
//  ViewController.swift
//  hit-map
//
//  Created by israel soto on 4/1/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBAction func Move(_ sender: Any) {
        performSegue(withIdentifier: "segueId", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
