//
//  GameCategory.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 15/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import Foundation

struct GameCategory {
    let title: String
    let details: String
    let images: String
}

extension GameCategory {
    static func createGameCategory() -> [GameCategory] {
        return [GameCategory(title: "Hati-hati banyak kuman!",
                             details: "Ternyata setiap hari kita dikelilingi oleh jutaan kuman! Ayo, cari tahu cara menjauhkan diri kita dari kuman!",
                             images: "image.Category1.png"),
                GameCategory(title: "Waktunya makan!",
                             details: "Kruyuk... Wah, ada suara perut lapar! Ini waktunya kita makan!  Tapi, perhatikan baik-baik makananmu, ya…",
                             images: "image.Category2.png")
        ]
    }
}
