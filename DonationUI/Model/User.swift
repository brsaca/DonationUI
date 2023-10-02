//
//  User.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import Foundation

struct User {
    let id = UUID()
    let name: String
    let fullName: String
    let image: String
    let isMine: Bool
    let followers: Int
    let supporters: Int
    let members: Int
    let details: String
    let earnings: Earning
    let activities: [Activity]
}

extension User {
    static let MOCK_USERS = [
        User(name: "Ashley", fullName: "Ashley Lors", image: "woman1", isMine: true, followers: 234, supporters: 210, members: 210, details: "• Creative director. Content creation and project development. • Videographer on location, direction on set and coordination of work teams.", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
        User(name: "Kinan", fullName: "Kinan Manopa", image: "woman2", isMine: false, followers: 231, supporters: 342, members: 753, details: "Founder & CEO JUNO / Angel Investor/ Young Global Leader 2021 at World Economic Forum / Endeavor Entrepreneur / Forbes & Expansion 30", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
        User(name: "Greyhold", fullName: "Greyhold Reaves", image: "man1", isMine: false, followers: 123, supporters: 653, members: 325, details: "Body transformation coach to entrepreneurs. On a mission to help 1 million people transform their bodies by 2027. Follow me for posts on high performance & health optimization.", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
        User(name: "Nolan", fullName: "Nolan DiCaprio", image: "man2", isMine: false, followers: 543, supporters: 122, members: 275, details: "Sales Coach | Helping AE’s to 2X Their Results in <90 Days and Max Their Potential | 3X Salesforce Top Sales Influencer | LinkedIn Top Voice | WSJ Best-Selling Author", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
        User(name: "Daphne", fullName: "Daphne Trousers", image: "woman3", isMine: false, followers: 64, supporters: 341, members: 334, details: "", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
        User(name: "Allan", fullName: "Allan Palma", image: "man3", isMine: false, followers: 321, supporters: 341, members: 543, details: "108K+ LinkedIn Family 🚀| Top AI content creator on LinkedIn | Unstop's Top 75 Unstoppable Education & Career Influencers | Featured: New York Times Square | Growth Marketer | Helping brands to grow 📈", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
        User(name: "Leo", fullName: "Leo Archuf", image: "man4", isMine: false, followers: 124, supporters: 346, members: 543, details: "", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
        User(name: "Cleo", fullName: "Cleo Moran", image: "woman4", isMine: false, followers: 643, supporters: 342, members: 642, details: "CEO Grupo Power | TOP Voice Oficial LinkedIn | TED Licensee & Curator | Founder Tacos Fuertes & Mujeres Power | Mentora Marca Power LinkedIn |#1 Best Seller Amazon | #TOP1 HR Influyente Corporativa | Libro YO POWER", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
        User(name: "Nora", fullName: "Nora Williams", image: "woman5", isMine: false, followers: 443, supporters: 323, members: 53, details: "Agilist Lead Consultant / Lean - Agile Business Transformation Expert / SAFe SPC / Executive Coach (ACTP)", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
        User(name: "Matt", fullName: "Matt Straleinki", image: "man5", isMine: false, followers: 534, supporters: 431, members: 125, details: "Reinventing Finance 1% at a Time 💸 | Leading & Scaling FinTech Unicorn 🦄 | The only newsletter you need for Finance🤝Tech at 🔔linas.substack.com🔔 | Financial Technology | Artificial Intelligence | Banking | AI", earnings: Earning.MOCK, activities: Activity.MOCK_ACTIVITIES),
    ]
}
