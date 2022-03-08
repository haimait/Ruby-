#!/usr/bin/env ruby
require 'rubygems'
require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '3s' do
  puts 'Hello... Rufus'
end

scheduler.join

