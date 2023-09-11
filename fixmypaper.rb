#!/usr/bin/env ruby

# load the instapaper api
require 'instapaper'

client = Instapaper::Client.new do |client|
  client.consumer_key = YOUR_CONSUMER_KEY
  client.consumer_secret = YOUR_CONSUMER_SECRET
  client.oauth_token = YOUR_OAUTH_TOKEN
  client.oauth_token_secret = YOUR_OAUTH_TOKEN_SECRET
end

# get the list of folders
folders = client.folders

# delete each folder
folders.each do |folder|
  client.delete_folder(folder.folder_id)
end
