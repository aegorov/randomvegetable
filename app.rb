# encoding: utf-8
require 'rubygems'
require 'net/http'
require 'nokogiri'
require 'sinatra'
require 'erb'
require 'ms-translator'

Microsoft::Translator.set_app_id(ENV['API_KEY'])

get "/" do
  vegetables = %w(Broccoli Cucumber Tomato Cabbage Kohlrabi
                Chard Parsley Dill Basil Savory Mint
                Melissa Rumex Spinach Fennel Pepper Eggplant
                Courgette Pattypan Squash Pumpkin, Peas, Beans,
                Potatoes Carrots Beet Radish Radishes Horseradish
                Celery Cassava Jerusalem Artichoke Turnip Rutabaga
                Burdock Arracacha Onion Garlic Asparagus Rhubarb)
  @random_vegetable = vegetables.sample
  @translate = Microsoft::Translator(@random_vegetable, 'en', 'ru')
  erb :index
end