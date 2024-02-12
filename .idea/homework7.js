//Task1. Display unblocked users from France and USA
db.users.find({

    country: {$in: ["USA", "France"]},
    is_blocked: {$ne: true}

})

//Task2. Display track names lasting from 5 to 15 minutes
db.tracks.find(
    {

        duration_sec: { $gte: 300, $lte: 900 },
        song: { $ne: null}
    }
)

//Task3. Unblock users not from Georgia
db.users.updateMany(
    { country: { $ne: 'Georgia' } },
    { $set: { is_blocked: false } }
)

//Task4. Increase the balance of unblocked users not from Germany by 150 EUR
db.users.updateMany(
    { country: { $ne: 'Georgia' }, is_blocked: false },
    { $inc: { balance: 150 } }
)

//Task 5. Describe the “social network” database scheme (users, publications, friends, chats)
// https://dbdiagram.io/d/Social_network_db-65ca481eac844320aef9228a
