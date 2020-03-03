//
//  Groups.swift
//  Contacts
//
//  Created by Mo Abdulmalik on 29/02/2020.
//  Copyright © 2020 Mo Abdulmalik. All rights reserved.
//

import SwiftUI

struct Groups: View {
  @Environment(\.presentationMode) var presentationMode
    var body: some View {
      NavigationView {
        Form{
          Section(header: Text("IPHONE")){
            Text("All iPhone")
            Text("Friends")
            Text("Work")
              
          .navigationBarTitle("Groups", displayMode: .inline)
          .navigationBarItems(trailing:
            Button("Done"){
              self.presentationMode.wrappedValue.dismiss()
            })
        }
        .padding(.top, 20)
      }
    }
  }
}

struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups()
    }
}
