const express = require("express");
const router = express.Router();

const UserRepo = require("../repos/user-repo");

router.get("/users", async (req, res) => {
  const users = await UserRepo.find();

  res.send(users);
});

router.get("/users/:id", async (req, res) => {
  const { id } = req.params;

  const user = await UserRepo.findById(id);

  if (user) {
    return res.send(user);
  }

  return res.sendStatus(404);
});

router.post("/users", async (req, res) => {
  const { username, bio } = req.body;

  const user = await UserRepo.insert(username, bio);

  res.send(user);
});

router.put("/users/:id", async (req, res) => {
  const { id } = req.params;
  const { username, bio } = req.body;

  const user = await UserRepo.update(id, username, bio);

  if (user) {
    return res.send(user);
  }

  return res.sendStatus(404);
});

router.delete("/users/:id", async (req, res) => {
  const { id } = req.params;

  const user = await UserRepo.delete(id);

  if (user) {
    return res.send(user);
  }

  return res.sendStatus(404);
});

module.exports = router;
