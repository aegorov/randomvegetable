# encoding: utf-8
require 'sinatra'
require 'erb'


get "/" do
  vegetables = ["broccoli",'cucumber','tomato']
  @vegetables_with_translate = {"broccoli" => "броколи", "cucumber" =>"огурец", "tomato" => "томат"}
  @random_vegetable = vegetables.at(Random.rand(vegetables.size))
  erb :index
end