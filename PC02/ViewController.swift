//
//  ViewController.swift
//  semana8
//
//  Created by Mario on 20/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var artworks: [Artwork] = []
    
    @IBOutlet weak var tableFotos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let artwork1 = Artwork(
            title: "Trabajo de arte", artist: "Mario", image: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Jade_ornament_with_grape_design.jpg", description: "Esta es una descripción!"
        )
        let artwork2 = Artwork(
            title: "Trabajo de arte", artist: "Yadhira", image: "https://media.admagazine.com/photos/618a6acacc7069ed5077ca7c/3:2/w_2250,h_1500,c_limit/69052.jpg", description: "Esta es una descripción!"
        )
        let artwork3 = Artwork(
            title: "La Mona Lisa", artist: "Leonel", image: "https://media.admagazine.com/photos/618a6ac93174d0288cf2d418/master/w_1600%2Cc_limit/68699.jpg3", description: "Esta es una descripción!"
        )
        artworks.append(artwork1)
        artworks.append(artwork2)
        artworks.append(artwork3)
        
        // Configurar el dataSource de la UITableView
        tableFotos.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artworks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTablevIiewCell", for: indexPath) as! CustomTableViewCell
        
        let artwork = artworks[indexPath.row]
        
        cell.lblTitulo.text = artwork.title
        cell.lblNombre.text = artwork.artist
        cell.lblDescription.text = artwork.description
        
        if let url = URL(string: artwork.image) {
            if let data = try? Data(contentsOf: url) {
                cell.img_View.image = UIImage(data: data)
            }
        }
        
        return cell
    }
}

