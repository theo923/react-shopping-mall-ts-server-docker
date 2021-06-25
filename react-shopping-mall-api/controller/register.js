const handleRegister = (db, bcrypt) => (req, res) => {
    console.log("Request for user register")
    const { username, password } =  req.body
    console.log(username, password)
    const hash = bcrypt.hashSync(password)
    db.transaction(trx => {
        trx.insert({
            hash: hash,
            username: username
        })
        .into("login")
        .returning("username")
        .then(loginUsername => {
            return trx("users")
            .returning("*")
            .insert({
                username: loginUsername[0],
                joined: new Date(),
                orders: []
            })
            .then(user => {
                console.log(`${username} Registered.`)
                res.json("finished")
            })
        })
        .then(trx.commit)
        .catch(trx.rollback)
    })

}

module.exports = {
    handleRegister: handleRegister
}