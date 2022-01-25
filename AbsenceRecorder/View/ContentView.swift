//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Nick Stoian on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
  var divisions: [Division]
  @State var currentDate: Date = Date()
  
    var body: some View {
      NavigationView{
        List(divisions, id: \.self.code) { division in // performs the Text function for every element in division
          DivisionItem(division: division)
        }
        .navigationTitle(currentDate.getShortDate())
        .toolbar {
          ToolbarItem(placement: .navigationBarLeading) {
            Button(action: {currentDate = currentDate.previousDay()}) {
              Image(systemName: "arrow.backward")
            }
          }
          ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: {currentDate = currentDate.nextDay()}) {
              Image(systemName: "arrow.forward")
            }
          }
        }
      }
    }

  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(divisions: Division.examples)
    }
}
