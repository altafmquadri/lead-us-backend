
User.destroy_all
Lead.destroy_all
Sale.destroy_all
Appointment.destroy_all
Call.destroy_all


User.create(first_name: "Altaf", last_name: "Quadri", company_name: "some sales company")


Lead.create ({
    user_id: 1,
    first_name: "Nasr",
    last_name: "Quadri",
    street: "25 Broadway",
    city: "New York",
    state: "NY",
    postal_code: "10004",
    phone_number: "212-786-7978",
    beneficiary_information: "Nishad Chaudry",
    date_of_birth: "07/08/1985"
})

Lead.create ({
    user_id: 1,
    first_name: "Salman",
    last_name: "Quadri",
    street: "30 Broadway",
    city: "New York",
    state: "NY",
    postal_code: "10004",
    phone_number: "212-271-7978",
    beneficiary_information: "Ahlam Aitboul",
    date_of_birth: "04/11/1987"
})

Lead.create ({
    user_id: 1,
    first_name: "Mustafa",
    last_name: "Khan",
    street: "45 Broadway",
    city: "New York",
    state: "NY",
    postal_code: "10008",
    phone_number: "212-271-7978",
    beneficiary_information: "Samiha Aitboul",
    date_of_birth: "30/12/1985"
})

Lead.create ({
    user_id: 1,
    first_name: "Ahlam",
    last_name: "Aitboul",
    street: "100 Broadway",
    city: "New York",
    state: "NY",
    postal_code: "10008",
    phone_number: "212-271-7978",
    beneficiary_information: "Salman Quadri",
    date_of_birth: "29/06/1985"
})


Lead.create ({
    user_id: 1,
    first_name: "Samiha",
    last_name: "Aitboul",
    street: "100 Broadway",
    city: "New York",
    state: "NY",
    postal_code: "10008",
    phone_number: "212-271-7978",
    beneficiary_information: "Mustafa Khan",
    date_of_birth: "15/07/1985"
})

Lead.create ({
    user_id: 1,
    first_name: "Asad",
    last_name: "Jams",
    street: "18 Broadway",
    city: "New York",
    state: "NY",
    postal_code: "10008",
    phone_number: "212-871-7978",
    beneficiary_information: "Mishal Khan",
    date_of_birth: "16/08/1985"
})

Lead.create ({
    user_id: 1,
    first_name: "Mishal",
    last_name: "Pams",
    street: "185 Broadway",
    city: "New York",
    state: "NY",
    postal_code: "10008",
    phone_number: "212-871-7978",
    beneficiary_information: "Asad Jam",
    date_of_birth: "21/09/1985"
})


Appointment.create({
    lead_id: 3,
    title: "Meeting at Starbucks",
    date: "15/12/19",
    start_time: "4:00",
    end_time: "5:00",
    presentation_made?: true
})

Appointment.create({
    lead_id: 1,
    title: "Meeting at Home Depot",
    date: "18/12/19",
    start_time: "2:00",
    end_time: "3:00",
    presentation_made?: true
})

Call.create({
    lead_id: 4,
    call_status: "left message"
})

Call.create({
    lead_id: 5,
    call_status: "left message"
})

Sale.create({
    lead_id: 6,
    annualized_life_premium: 800.00
})

Sale.create({
    lead_id: 7,
    annualized_life_premium: 1200.00
})


