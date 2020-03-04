//
//  ProfileCreatorView.swift
//  Contacts
//
//  Created by Mo Abdulmalik on 27/02/2020.
//  Copyright © 2020 Mo Abdulmalik. All rights reserved.
//

import SwiftUI

struct ProfileCreatorView: View {
  @State var text = ""
	@Environment(\.presentationMode) var presentationMode
    var body: some View {
			NavigationView {
				Form {
					Group{
					
						TextField("First Name", text: $text)
						TextField("Last Name",  text: $text)
						TextField("Middle Name", text: $text)
					}
				}
			.navigationBarTitle("New Contact", displayMode: .inline)
			.navigationBarItems(
				leading:
				Button("Cancel"){
					self.presentationMode.wrappedValue.dismiss()
				},
				trailing:
				Button("Done") {
					//self.disabled(false)
					self.presentationMode.wrappedValue.dismiss()
				}
				.disabled(true)
				)
			}
    }
}

struct ProfileCreatorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCreatorView()
    }
}
