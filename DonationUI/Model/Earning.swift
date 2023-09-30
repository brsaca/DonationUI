//
//  Earning.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 29/09/23.
//

import Foundation

struct Earning {
    let membership: Double
    let shop: Double
    let donation: Double
}

extension Earning {
    static let MOCK = Earning(membership: 530.3, shop: 123.35, donation: 220)
}
