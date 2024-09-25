// models/User.js
const mongoose = require('mongoose');
const bcrypt = require('bcrypt');

// Define User schema
const UserSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  email: {
    type: String,
    required: true,
    unique: true,
  },
  password: {
    type: String,
    required: true,
  }
});



const User = mongoose.model('User', UserSchema);
module.exports = User;
