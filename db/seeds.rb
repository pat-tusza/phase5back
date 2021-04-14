# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ny_list = [
    {   cid: "N00029404",
        name: "Lee Zeldin",
        party: "R",
        image: "",
        office: "NY01",
        gender: "M",
        first_elected: "2014",
        birthdate: "1980-01-30"
    },
    {
        cid: "N00001193",
        name: "Pete King",
        image: "",
        party: "R",
        office: "NY02",
        gender: "M",
        first_elected: "1992",
        birthdate: "1944-04-05"
    },
    {
        cid: "N00038742",
        name: "Tom Suozzi",
        party: "D",
        image: "",
        office: "NY03",
        gender: "M",
        first_elected: "2016",
        birthdate: "1962-08-31"
    },
    {   
        cid: "N00035927",
        name: "Kathleen Rice",
        party: "D",
        image: "",
        office: "NY04",
        gender: "F",
        first_elected: "2014",
        birthdate: "1965-02-15"
    },
    {
        cid: "N00001171",
        name: "Gregory W Meeks",
        party: "D",
        image: "",
        office: "NY05",
        gender: "M",
        first_elected: "1998",
        birthdate: "1953-09-25"
    },
    {
        cid: "N00034547",
        name: "Grace Meng",
        party: "D",
        image: "",
        office: "NY06",
        gender: "F",
        first_elected: "2012",
        birthdate: "1975-10-01"
    },
    { 
        cid: "N00001102",
        name: "Nydia M Velazquez",
        party: "D",
        image: "",
        office: "NY07",
        gender: "F",
        first_elected: "1992",
        birthdate: "1953-03-28"
    },
    {
        cid: "N00033640",
        name: "Hakeem Jeffries",
        party: "D",
        image: "",
        office: "NY08",
        gender: "M",
        first_elected: "2012",
        birthdate: "1970-08-04"
    },
    {
        cid: "N00026961",
        name: "Yvette D Clarke",
        party: "D",
        image: "",
        office: "NY09",
        gender: "F",
        first_elected: "2006",
        birthdate: "1964-11-21"
    },
    {
        cid: "N00000939",
        name: "Jerrold Nadler",
        party: "D",
        image: "",
        office: "NY10",
        gender: "M",
        first_elected: "1992",
        birthdate: "1947-06-13"
    },
    {
        cid: "N00041588",
        name: "Max Rose",
        party: "D",
        image: "",
        office: "NY11",
        gender: "M",
        first_elected: "2018",
        birthdate: "1986-11-28"
    },
    {
        cid: "N00000078",
        name: "Carolyn B Maloney",
        party: "D",
        image: "",
        office: "NY12",
        gender: "F",
        first_elected: "1992",
        birthdate: "1946-02-19"
    }
]

ny_list.each{|member| Member.create(
    name: member[:name],
    cid: member[:cid],
    party: member[:party],
    image: member[:image],
    office: member[:office],
    gender: member[:gender],
    first_elected: member[:first_elected],
    birthdate: member[:birthdate]
)}

User.create(username: 'TEST')


puts "done"