# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
S3spike::Application.config.secret_key_base = '93ca1fac3039f39c267724290ec722f2a4510bda2ee5c4b18b593c508d97f2c6b78dd504bb03c8a560b45ef6954dfeab6e2996917e79fefac8805a3052b7bf66'
