//
//  Task.swift
//  IOS_Project_3_Photo_Scavenger_Hunt
//
//  Created by Ana Alfaro-Garcia on 05/16/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite hiking spot ⛰️",
                 description: "What location do you find best for a hike?"),
            Task(title: "Your favorite nature spot 🌻",
                 description: "What is the best place to get some fresh air?"),
            Task(title: "Your favorite local restaurant 🥡",
                 description: "What is your favorite restaurant to eat at?"),
            Task(title: "Your favorite place to be alone 👤",
                description: "Where do you go to be by yourself?"),
            Task(title: "Your favorite view at night 🌌",
                 description: "Where do you find yourself going to look at the stars?")
        ]
    }
}
