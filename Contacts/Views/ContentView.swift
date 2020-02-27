//
//  ContentView.swift
//  Contacts
//
//  Created by Mo Abdulmalik on 27/02/2020.
//  Copyright © 2020 Mo Abdulmalik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var contactStore: ContactStore
    var body: some View {
      NavigationView {
        List(contactStore.contacts) { contact in
          Text(contact.name)
        }
        .navigationBarTitle("Contact")
        .navigationBarItems(
          leading:
            Button("Groups"){
        },
          trailing:
          Button(
            action: {}
          ){
            Image(systemName: "plus")
          }
        )
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView( contactStore: ContactStore() )
    }
}
