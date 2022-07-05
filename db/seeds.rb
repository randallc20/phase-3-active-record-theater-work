puts "Seeding......"

Role.create(character_name: "Bob")
Role.create(character_name: "James Bond")
Role.create(character_name: "Gordon Ramsey")
Role.create(character_name: "Chris")
Role.create(character_name: "BINGBONG")

Audition.create(actor: "Name1", location: "Prague", phone: "123", hired: 0, role_id: 1)
Audition.create(actor: "Name2", location: "Houston", phone: "456", hired: 1, role_id: 2)
Audition.create(actor: "Name3", location: "Denver", phone: "789", hired: 0, role_id: 3)



puts "Done Seeding......"