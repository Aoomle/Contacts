//
//  ContactStore.swift
//  Contacts
//
//  Created by Mo Abdulmalik on 27/02/2020.
//  Copyright © 2020 Mo Abdulmalik. All rights reserved.
//

class ContactStore {
  var contacts = ["Abdulmalik Muhammad","Kamaludeen Muhammad","John Peterson", "Lucas Jovic", "Atika Muhammad", "Benard Jack"].map(){ Contact(name: $0)}
}
