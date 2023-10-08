const mongoose = require('mongoose');
const schema = mongoose.Schema;

const newSchema = new schema({
    name:String,
    password:String
})

module.exports = mongoose.model('helloWorld',newSchema);