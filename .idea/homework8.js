//Task1. Using the aggregate() method, within the music database, display the names of the three longest tracks
db.tracks.aggregate([
    { $sort: { duration_sec: -1 } },
    { $limit: 3 },
    { $project: {song: 1, _id: 0}}
])

//Task2. Using the aggregate() method, within the users database, display the name of one random user not from the USA
db.users.aggregate([
    { $match: { country: {$ne: 'USA'}}},
    { $sample: {size: 1}},
    { $project: {fullname: 1, _id: 0}}
])

//Task3. Complete the creation of the “payment system” database schema
//(users, accounts, transactions) using an online design tool.
//https://dbdiagram.io/d/Payment_system-65ca8341ac844320aefcaaea