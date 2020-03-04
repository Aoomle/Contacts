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
	@State var isOn = false
	
	let checkMarks = Image(systemName: "checkmark")
    var body: some View {
      NavigationView {
        Form{
          Section(header: Text("IPHONE")){
						Button(action: {
							self.isOn = !self.isOn
						}) {
							HStack{
								Text("All iPhone")
								Spacer()
								if self.isOn == true {
									checkMarks.foregroundColor(.blue)
								} else{
									checkMarks.hidden().foregroundColor(.blue)
								}
								
							}
						}.foregroundColor(.primary)
						
						Button(action: {
							self.isOn = false
						}) {
							HStack{
								Text("Friends")
								Spacer()
								if self.isOn == true {
									checkMarks.foregroundColor(.blue)
								} else  {
									checkMarks.hidden().foregroundColor(.blue)
								}
								
							}
						}.foregroundColor(.primary)
						
						Button(action: {
							//self.isOn = !self.isOn
						}) {
							HStack{
								Text("Work")
								Spacer()
								if self.isOn == true {
									checkMarks.foregroundColor(.blue)
								} else  {
									checkMarks.hidden().foregroundColor(.blue)
								}
								
							}
						}.foregroundColor(.primary)
							
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
