# Tinder Bot

require 'rubygems'
require 'pyro'
#require 'koala'
#require 'net/http'
#require 'uri'

FACEBOOK_ID = "100011000440636"
FACEBOOK_TOKEN = "CAAGm0PX4ZCpsBAO1Pd13hz8k94CqNw3pnVv4zaVacUhDtQTq4Iqmdt1zGbxZBivGHFFV3" +
								 "qmUpiJh8Rg5WiO39BjdZBw6b0YsvVFp4HaQLD5CTosl2pYoHBYDjdZBFLkfaiRLVHozImS" +
								 "jOVDejCHJPajBgXqwus7bBxzywU0Bii1JcJjjwwIgM0ZCOhxG7YZCTyDbZB4n4GadAZDZD"

=begin
def get_fb_token
	url = URI.parse('https://www.facebook.com/dialog/oauth?client_id=464891386855067&
		redirect_uri=https://www.facebook.com/connect/login_success.html&scope=basic_info,
		email,public_profile,user_about_me,user_activities,user_birthday,user_education_
		history,user_friends,user_interests,user_likes,user_location,user_photos,user_
		relationship_details&response_type=token')
	res = Net::HTTP.start(url.host, url.port) { |http| http.get(url.request_uri) }
	puts res['location']
end
=end

pyro = TinderPyro::Client.new
pyro.sign_in(FACEBOOK_ID, FACEBOOK_TOKEN)

users = pyro.get_nearby_users

puts users['name']
