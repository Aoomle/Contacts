//
//  ContentView.swift
//  Contacts
//
//  Created by Mo Abdulmalik on 27/02/2020.
//  Copyright © 2020 Mo Abdulmalik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var searchText = ""
  @State private var showCancelButton: Bool = false
  @State private var modelIsPresented = false
  @State private var modelSelection = 1
  
  var contactStore: ContactStore
    var body: some View {
        NavigationView {
          VStack {
          // Search view
            HStack {
              HStack {
								Image(systemName: "magnifyingglass")
								TextField("Search", text: $searchText, onEditingChanged: { isEditing in
									self.showCancelButton = true
                  })
								.foregroundColor(.primary)
								Button(action: {
									self.searchText = ""
								}) {
									Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
								}
              }
							.padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
              .foregroundColor(.secondary)
              .background(Color(.secondarySystemBackground))
              .cornerRadius(10.0)

						if showCancelButton  {
								Button("Cancel") {
									UIApplication.shared.endEditing(true) // this must be placed before the other commands here
										self.searchText = ""
										self.showCancelButton = false
                  }
								.foregroundColor(Color(.systemBlue))
              }
          }
          .padding(.horizontal)
          .navigationBarHidden(showCancelButton) // .
					.animation(.default) // animation does not work properly

					List(contactStore.contacts.filter{$0.name.hasPrefix(searchText) || searchText == "" }) { contact in
            Text(contact.name)
          }
				.navigationBarTitle("Contact")
				.navigationBarItems(
						leading:
              Button("Groups"){
								
                self.modelSelection = 1
                self.modelIsPresented = true
							}.frame(maxHeight: 20),
            trailing:
              Button(
              action: {
                self.modelSelection = 2
                self.modelIsPresented = true
              }
              ){
              Image(systemName: "plus")
								.frame(maxHeight: 20)
            }
				)
      }
    }
			.sheet(isPresented: $modelIsPresented){
					if self.modelSelection == 1 {
            Groups()
          }
          if self.modelSelection == 2 {
            ProfileCreatorView()
          }
		}
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView( contactStore: ContactStore() )
    }
}
