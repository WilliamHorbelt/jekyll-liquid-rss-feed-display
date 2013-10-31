jekyll-rss-feed-output
======================

Simple RSS feed output for Jekyll using a Liquid tag

## About

I wanted to display blog posts on my website's homepage. The blog is a separate website so I just wanted to fetch the feed and output it as a list.

Feedzirra does most of the work. This is just a Ruby script to create a custom Liquid tag that accepts parameters. 

I just wanted to share it in case anyone needed it.

## Perquisites 

Install [feedzirra](https://github.com/pauldix/feedzirra). 

Using [RubyGems](http://rubygems.org/gems/feedzirra)

	gem install feedzirra

## Usage

Add feeddisplay.rb to your _plugins folder.

Displays the default limit of items:

	{% feed_display http://rss.cnn.com/rss/cnn_topstories.rss %}
	
Specify the number of items to display:

	{% feed_display http://rss.cnn.com/rss/cnn_topstories.rss 20 %}

The default limit is 10.

## Plans

Make the output and options similar to WordPress widget options.

Put error checking for a bad feed URL:

	Liquid Exception: undefined method `entries'