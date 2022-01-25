//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Nick Stoian on 25/01/2022.
//

import SwiftUI

struct DivisionItem: View {
  let division: Division
  
  var body: some View {
    HStack {
      Image(systemName: "\(division.students.count).circle")
      Text("\(division.code)")
    }
    }
}

struct DivisionItem_Previews: PreviewProvider {
    static var previews: some View {
      DivisionItem(division: "vBY-1")
    }
}
