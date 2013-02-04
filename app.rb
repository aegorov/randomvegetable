# encoding: utf-8
require 'rubygems'
require 'net/http'
require 'nokogiri'
require 'sinatra'
require 'erb'
require 'yandex-translator'


get "/" do
  vegetables = %w(Broccoli Cucumber Tomato Cabbage Kohlrabi
                Chard Parsley Dill Basil Savory Mint
                Melissa Rumex Spinach Fennel Pepper Eggplant
                Courgette Pattypan Squash Pumpkin Peas Beans
                Potatoes Carrots Beet Radish Radishes Horseradish
                Celery Cassava Jerusalem Artichoke Turnip Rutabaga
                Burdock Arracacha Onion Garlic Asparagus Rhubarb)
  @random_vegetable = vegetables.sample
  @translate = Yandex::Translator.translate(@random_vegetable, 'ru')
  erb :index
end