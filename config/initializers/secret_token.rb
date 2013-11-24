# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Lotipico::Application.config.secret_key_base = ENV['SECRET_KEY_BASE'] || '68f64d1f67d45be88121c60045f8479510443f624cd3213ea8a242b5503e6b50591ee497ad0952f8ef01f8a78c336025b635037e3505ef1383c6eb9e9317c5f2'
