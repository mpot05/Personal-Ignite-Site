import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("Ignite Test Site")
                .font(.title1)
                .padding(.top, .extraLarge)
                .textSelection(.all)
            Table {
                Row {
                    Text("Row 1")
                        .foregroundStyle(.red)
                        .textSelection(.all)
                    Text("Yes")
                        .foregroundStyle(.red)
                        .textSelection(.all)
                }
                Row {
                    Text("Row 2")
                        .foregroundStyle(.blue)
                        .textSelection(.all)
                    Text("More words")
                        .style("color: red;")
                        .textSelection(.all)
                }
                
            }.backgroundColor(.purple)
            Divider()
            Text("Below Divider").textSelection(.all)
            Accordion {
                Item("First", startsOpen: true) {
                    Text("This item will start open by default.").textSelection(.all)
                }
                
                Item("Second") {
                    Text("This is the second accordion item.").textSelection(.all)
                }
                
                Item("Third") {
                    Text("This is the third accordion item.").textSelection(.all)
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
                """).textSelection(.all)
            
            Dropdown("Click Me") {
                Text("Hello")
                Divider()
                Text("Or you can just…")
                Link("Go back home", target: "/IgniteTest/")
            }
            .dropdownSize(.large)
            .role(.primary)
        }
        .padding(.top, .extraLarge)
        .margin()
        .textSelection(.none)
    }
}
