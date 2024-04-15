//
//  Page2.swift
//
//
//  Created by Michael Potter on 4/10/24.
//

import Foundation
import Ignite


struct Page2: StaticPage {
    var title = "Page2"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("YES")
                .font(.title1)
                .padding(.top, 100)
            CodeBlock(language: "python", """
                print("Hello, World!")
                """)
            CodeBlock(language: "java", """
                System.out.println("Hello World!");
                """)
            Dropdown("Drop") {
                Text("Weee")
                Text("More string")
            }
            Image("/IgniteTest/images/Haverford_H.jpeg")
        }.padding(.top, .medium)
            .margin()
    }
}
