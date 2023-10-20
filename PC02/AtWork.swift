//
//  ArtWork.swift
//  semana8
//
//  Created by Mario on 20/10/23.
//

import Foundation

class Artwork {
    var title: String
    var artist: String
    var image: String
    var description: String

    init(title: String,artist: String, image: String, description: String) {
        self.title = title
        self.artist = artist
        self.image = image
        self.description = description
    }
}
