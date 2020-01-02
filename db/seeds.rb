
User.destroy_all
Lead.destroy_all
Sale.destroy_all
Appointment.destroy_all
Call.destroy_all


User.create(username: "AltafQuadri", password:'1234', first_name: "Altaf", last_name: "Quadri", company_name: "some sales company")


Lead.create ({
    user_id: 1,
    first_name: "Nas",
    last_name: "Qua",
    street: "25 Broadway",
    city: "New York",
    state: "NY",
    postal_code: "10004",
    phone_number: "212-786-7978",
    beneficiary_information: "Nish Chay",
    date_of_birth: "1999-01-05",
    latitude: 40.7058514,
    longitude: -74.0135143
})

Lead.create ({
    user_id: 1,
    first_name: "Sal",
    last_name: "Fadri",
    street: "117 Dugway Drive",
    city: "Pawling",
    state: "NY",
    postal_code: "12564",
    phone_number: "212-271-7978",
    beneficiary_information: "Ahlamis Ait",
    date_of_birth: "1991-02-15",
    latitude: 41.624184,
    longitude: -73.628007
})

Lead.create ({
    user_id: 1,
    first_name: "Mus",
    last_name: "Phan",
    street: "180 N Main Street",
    city: "New City",
    state: "NY",
    postal_code: "10956",
    phone_number: "212-271-7978",
    beneficiary_information: "Ami Aitboul",
    date_of_birth: "30/05/1985",
    latitude: 41.155817,
    longitude: -73.987433
})

Lead.create ({
    user_id: 1,
    first_name: "Jinming",
    last_name: "Zhang",
    street: "221 1st st",
    city: "Jersey City",
    state: "NJ",
    postal_code: "07302",
    phone_number: "201-556-1321",
    beneficiary_information: "Sal Fadri",
    date_of_birth: "1992-01-21",
    latitude: 40.721642,
    longitude: -74.043505
})


Lead.create ({
    user_id: 1,
    first_name: "Anya",
    last_name: "Aitb",
    street: "55 water st",
    city: "New York",
    state: "NY",
    postal_code: "10008",
    phone_number: "917-908-2300",
    beneficiary_information: "Mus San",
    date_of_birth: "15/07/1985",
    latitude: 40.703173,
    longitude: -74.008209

})

Lead.create ({
    user_id: 1,
    first_name: "Adelyn",
    last_name: "Basak",
    street: "9229 shore road",
    city: "Brooklyn",
    state: "NY",
    postal_code: "11209",
    phone_number: "929-923-4345",
    beneficiary_information: "Mishal Jna",
    date_of_birth: "1984-09-27",
    latitude: 40.619988,
    longitude: -74.040039

})

Lead.create ({
    user_id: 1,
    first_name: "Luis",
    last_name: "Rodriquez",
    street: "17 Relay Street",
    city: "Stamford",
    state: "CT",
    postal_code: "06901",
    phone_number: "203-331-5708",
    beneficiary_information: "Ahlamis Ait",
    date_of_birth: "1991-02-15",
    latitude: 41.052523,
    longitude: -73.543075
})
