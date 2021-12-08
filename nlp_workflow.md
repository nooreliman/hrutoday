# Steps to reproduce Google Cloud

---

Make sure you:

on your rails app, you have locked

- gprc gem to version 1.38.0
- gem google-protobuf to version 3.17.0'

gem uninstall google-protobuf
gem uninstall gprc

bundle lock --add-platform ruby
only if you have an M1
bundle lock --remove-platform arm64-darwin20

then bundle install

on the terminal:

- export DISABLE_spring=true
