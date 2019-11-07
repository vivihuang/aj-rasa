db.auth('admin', 'adminpwd');

db.createUser({
    user: "rasauser",
    pwd: "rasapwd",
    roles: [{
        role: "readWrite",
        db: "rasa"
    }]
});
