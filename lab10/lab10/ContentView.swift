//
//  ContentView.swift
//  lab10
//
//  Created by Alexander Rojas Benavides on 9/18/21.
//

import SwiftUI
import SCLAlertView

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, world!")
            Button(
                action:{
                    self.showAlert()
                },
                label: {
                    Text("Click Me!")
                }
            )
        }
    }
    
    func showAlert(){
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: true
        )
        let alertView = SCLAlertView(appearance: appearance)
        alertView.showSuccess(
            "No button", subTitle: "You will have hard times trying to close me"
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
