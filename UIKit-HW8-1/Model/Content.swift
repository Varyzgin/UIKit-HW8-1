//
//  CardContent.swift
//  UIKit-HW8-1
//
//  Created by Дима on 12/10/24.
//

struct Content {
    let picture: String
    let price: Int
    let headerText: String
    let descriptionText: String
    
    static func data() -> [Content] {
        [
            Content(picture: "picture1", price: 100000, headerText: "First card First card First card", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
            Content(picture: "picture2", price: 97030, headerText: "Second card Second card Second card", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
            Content(picture: "picture3", price: 38503, headerText: "Third card Third card Third card", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
            Content(picture: "picture4", price: 57930, headerText: "Forth card Forth card Forth card", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
            Content(picture: "picture5", price: 78390, headerText: "First card First card First card", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
            Content(picture: "picture6", price: 89020, headerText: "Second card Second card Second card", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
            Content(picture: "picture7", price: 60580, headerText: "Third card Third card Third card", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        ]
    }
                    
}
