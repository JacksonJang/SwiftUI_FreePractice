//
//  ContentView.swift
//  SwiftUI_FreePractice
//
//  Created by 장효원 on 2022/01/01.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert"){
            showingAlert = true
        }
        .alert("Important Message", isPresented: $showingAlert){
            Button("OK"){}
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
