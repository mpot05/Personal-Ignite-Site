import Foundation
import Ignite

@main
struct IgniteWebsite {
    public static var fm = FileManager();
    static func main() {
        let site = ExampleSite()
        let workDir = "/Users/mpotter14/Desktop/IgniteStarter/"

        do {
            try site.publish()
            try fm.copyItem(atPath: (workDir + "Sources/js/clicker.js"), toPath: (workDir + "Build/js/clicker.js"))
            
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


