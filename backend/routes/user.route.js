const express = require('express');
const User = require('../models/user.model');
const router = express.Router();

// Middleware to handle errors
const handleErrors = (err, res) => {
  console.error(err);
  res.status(500).json({ error: 'An error occurred' });
};

router.post('/signup', async (req, res) => {
  try {
    const existingUser = await User.findOne({ name: req.body.name });

    if (existingUser) {
      return res.status(400).json({ message: 'Email already exists' });
    }

    const newUser = new User({
      name: req.body.name,
      password: req.body.password,
    });

    await newUser.save(); //updates the database with new user
    res.status(201).json(newUser);
  } catch (error) {
    handleErrors(error, res);
  }
});

router.post('/signin', async (req, res) => {
  try {
    const user = await User.findOne({
      name: req.body.name,
      password: req.body.password,
    });

    if (!user) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }

    res.json(user);
  } catch (error) {
    handleErrors(error, res);
  }
});



module.exports = router;
