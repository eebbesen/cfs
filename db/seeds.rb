# frozen_string_literal: true

Customer.create(
  first: 'Shaine',
  middle: 'Doolittle',
  last: 'Payne',
  street: '3901 Chicago Ave',
  city: 'Minneapolis',
  zip: 55_402
)

Customer.create(
  first: 'Phoebus',
  middle: 'Apollo',
  last: 'Cassini',
  street: '3901 Columbus Ave',
  city: 'Minneapolis',
  zip: 55_402
)

User.create(
  email: 'me@example.com',
  password: 'Passw0rd!',
  password_confirmation: 'Passw0rd!'
)
