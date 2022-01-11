//
//  SettingView.swift
//  SwiftUIForm
//
//  Created by 許博勛 on 2022/1/2.
//

import SwiftUI

struct SettingView: View {
    private var displayOrders = ["Alphabetical","Show Facorite First","Show Check-in First"]
    @State private var selectOrder = 0
    @State private var showCheckInOnly = false
    @State private var maxPriceLevel = 5
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Sort Preference")){
                    Picker(selection: $selectOrder, label: Text("Display Order")){
                        ForEach(0..<displayOrders.count,id:\.self ){
                            Text(self.displayOrders[$0])
                        }
                    }
                }
                Section(header: Text("Filter Preference")){
                    Toggle(isOn: $showCheckInOnly){
                        Text("Show Check-in Only")
                    }
                    Stepper(onIncrement: {
                        self.maxPriceLevel += 1
                        if self.maxPriceLevel > 5{
                            self.maxPriceLevel = 5
                        }
                    }, onDecrement: {
                        self.maxPriceLevel -= 1
                        if self.maxPriceLevel < 1{
                            self.maxPriceLevel = 1
                        }
                    }){
                        Text("Show \(String(repeating: "$",count: maxPriceLevel)) or below")
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
