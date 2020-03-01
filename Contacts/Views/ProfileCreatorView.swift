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
    var body: some View {
      VStack {
        Form  {
          HStack(alignment: .center) {
            Button("Cancel"){
              
            }
            .disabled(true)
            
            VStack {
              Text("New Contact")
            }
            
            Button("Done"){
              
            }
         
          }
          TextField("First Name", text: $text)
        }
      }
    }
}

struct ProfileCreatorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCreatorView()
    }
}
