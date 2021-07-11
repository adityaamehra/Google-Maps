//
//  ContentView.swift
//  Google Maps
//
//  Created by Adityaa Mehra on 11/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            let latitude = 90
            let longitude = 180
            let url = URL(string: "comgooglemaps://?saddr=&daddr=\(latitude),\(longitude)&directionsmode=driving")
            if UIApplication.shared.canOpenURL(url!){
                UIApplication.shared.open(url!, options: [:], completionHandler: nil)
            }else{
                let newUrl = URL(string: "https://www.google.co.in/maps/dir/?saddr=&daddr=\(latitude),\(longitude)&directionsmode=driving")
                UIApplication.shared.open(newUrl!, options: [:], completionHandler: nil)
            }
        }, label: {
            Text("Open Google Maps")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
