# encoding: utf-8
require 'net/http'
require 'nokogiri'
require 'sinatra'
require 'erb'
require 'ms-translator'

Microsoft::Translator.set_app_id('DC0080E42D4D34850E763304034C6767D39C80C0')

get "/" do
  vegetables = ['broccoli','cucumber','tomato','Garlic','Lentil','Earthnut pea',
                'Carrot','Wasabi','Hijiki','Beetroot','Common bean','Bamboo shoot',
                'Seakale','Indian pea','Celery','Ogonori','Gobo','Sweet pepper',
                'Pumpkin','Cress','Gim','Tepary bean','Ti','Yam','Samphire',
                'Mung bean','Wakame','Spinach','Chard','Yarrow','Pigeon pea']
  @random_vegetable = vegetables.at(Random.rand(vegetables.size))
  @translate = Microsoft::Translator("#{@random_vegetable}", 'en', 'ru')
  erb :index
end