import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("Ignite Test Site")
                .font(.title1)
                .padding(.top, .extraLarge)
            Table {
                Row {
                    Text("Row 1")
                        .foregroundStyle(.red)
                    Text("Yes")
                        .foregroundStyle(.red)
                }
                Row {
                    Text("Row 2")
                        .foregroundStyle(.blue)
                    Text("More words")
                        .style("color: red;")
                }
                
            }.backgroundColor(.purple)
            Text("Below Divider")
            Accordion {
                Item("First", startsOpen: true) {
                    Text("This item will start open by default.")
                }
                
                Item("Second") {
                    Text("This is the second accordion item.")
                }
                
                Item("Third") {
                    Text("This is the third accordion item.")
                }
            }
            .openMode(.individual)
            CodeBlock(language: "swift", """
                Dropdown("Click Me") {
                    Link("Accordions", target: AccordionExamples())
                    Link("Carousels", target: CarouselExamples())
                    Divider()
                    Text("Or you can just…")
                    Link("Go back home", target: "/")
                }
                .role(.primary)
                """)
            
            Dropdown("Click Me") {
                Text("Hello")
                Divider()
                Text("Or you can just…")
                Link("Go back home", target: "/IgniteTest/")
            }
            .role(.primary)
        }.padding(.top, .extraLarge)
            .margin()
    }
}
