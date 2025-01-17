//
//  ContentView.swift
//  ReviewWQuestion-Calculator
//

import SwiftUI

struct ContentView: View {
    
    @State private var result: Int = 0
    
    @StateObject var calculateData: calculateData
    @StateObject var operationData: operationData
    
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            VStack(spacing:14) {
                Spacer()
                resultView(result: $result)
                firstRow(result: $result)
                secondRow(result: $result)
                thirdRow(result: $result)
                fourthRow(result: $result)
                fifthRow(result: $result)
            }
            .environmentObject(calculateData)
            .environmentObject(operationData)
        }
        .onAppear {
                    UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation") // Forcing the rotation to portrait
                    AppDelegate.orientationLock = .portrait // And making sure it stays that way
                }
        .onDisappear {
                    AppDelegate.orientationLock = .all // Unlocking the rotation when leaving the view
                }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(calculateData: calculateData(), operationData: operationData())
    }
}
