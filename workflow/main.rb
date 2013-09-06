#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require "bundle/bundler/setup"
require "alfred"




Alfred.with_friendly_error do |alfred|
  fb = alfred.feedback

  title = Time.now.to_s

  fb.add_item({
    :uid => '',
    :title => title,
    :subtitle => '',
    :arg => '',
    :valid => 'true'
  })

  puts fb.to_xml(ARGV)
end



