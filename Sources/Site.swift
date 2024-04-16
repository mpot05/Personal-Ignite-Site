import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() {
        let site = ExampleSite()

        do {
            try site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Ignite Test"
    var baseTitle = " – Ignite Thing"
    var url = URL("https://mpot05.github.io/IgniteTest")
    var builtInIconsEnabled = true
    var syntaxHighlighters = [SyntaxHighlighter.swift, .python, .ruby, .java]

    var author = "Michael Potter"

    var homePage = Home()
    var theme = MyTheme()
    
    var pages: [any StaticPage] {
        Page2()
        Cookie()
    }
}


