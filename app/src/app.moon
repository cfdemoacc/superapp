lapis = require "lapis"

class extends lapis.Application
  "/": =>
    "Welcome 2222 Lapis #{require "lapis.version"}!"
  "/y": =>
    "But Y?"