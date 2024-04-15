//
//  NavBar.swift
//
//
//  Created by Michael Potter on 4/10/24.
//

import Foundation
import Ignite

struct NavBar: Component {
    func body(context: PublishingContext) -> [any PageElement] {
        NavigationBar {
            Link("Home", target: "/IgniteTest/index.html")
            Link("Page2", target: "/IgniteTest/page2/index.html")
            Dropdown("Drop") {
                Link("Home 2", target: "/IgniteTest/index.html")
                Link("Page2 2", target: "/IgniteTest/page2/index.html")
                Link("My other site", target: "https://mpot05.github.io")
                    .target(.blank)
            }
        }
        .backgroundColor(.blue)
        .navigationBarStyle(.dark)
        .position(.fixedTop)
        .navigationItemAlignment(.default)
    }
}
