//
//  Cookie.swift
//  
//
//  Created by Michael Potter on 4/15/24.
//

import Foundation
import Ignite

struct Cookie: StaticPage {
    var title = "Ignite Clicker"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("Cookie")
            Text("0").id("score")
            Button {
                Image("/images/cookie.png")
            }.id("Cookie")
            Divider()
            Button {
                Text("Reset")
            }.id("reset")
//            Script(code: "var cookie = 0;document.getElementById(\"reset\").onclick=function(){cookie = 0; document.getElementById(\"score\").innerHTML=cookie;}; document.getElementById(\"Cookie\").onclick=function(){cookie += 1; document.getElementById(\"score\").innerHTML=cookie;}")
            Script(file: "cookie.js")
            
            
            
            
            
        }.padding(.top, .extraLarge)
            .margin().style("text-align: center")
    }
}
