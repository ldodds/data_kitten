# data_kitten

[![Build Status](http://jenkins.theodi.org/job/data_kitten-master/badge/icon)](http://jenkins.theodi.org/job/data_kitten-master/)
[![Code Climate](https://codeclimate.com/github/theodi/data_kitten.png)](https://codeclimate.com/github/theodi/data_kitten)
[![Dependency Status](https://gemnasium.com/theodi/data_kitten.png)](https://gemnasium.com/theodi/data_kitten)

![DATAS - I HAZ THEM](https://gs1.wac.edgecastcdn.net/8019B6/data.tumblr.com/67399f2b335ef62d562dc9eb41c0db16/tumblr_mmy9g7rA8M1s4aj1ho1_500.jpg)

A collection of classes that represent Datasets and other concepts, modeled on [DCAT](http://www.w3.org/TR/vocab-dcat/)

The module is designed to automatically interrogate data sources and give back data 
and metadata in a consistent format. The best starting place is probably by having a look at `Dataset`.

It is designed to handle data from multiple `Sources` (such as git repositories, local files, remote URLs), 
`Hosts` (GitHub, etc), and `PublishingFormats` (DataPackage, RDFa, microdata, DSPL, etc).

Currently supports Datapackages in git repositories (including but not limited to GitHub repos). 
Wider support will follow.

# Documentation

Full YARD documentation is available on [Rubydoc.info](http://rubydoc.info/github/theodi/data_kitten/master/frames).

# Licence

This code is open source under the MIT license. See the LICENSE.md file for full details.

# Requirements

* Git ~> 1.2.6

# Usage

Pop the gem into your Gemfile:

        gem 'data_kitten', :git => "git://github.com/theodi/data_kitten.git"

Require if you need to:

	require 'data_kitten'
	
Request a dataset:
	
	dataset = DataKitten::Dataset.new(access_url: "https://github.com/theodi/dataset-mod-disposals.git")
	
Use the results:

	dataset.supported?
	dataset.origin
	dataset.host
	dataset.data_title
	dataset.documentation_url
	dataset.release_type
	dataset.time_sensitive?
	dataset.publishing_format
	dataset.maintainers
	dataset.publishers
	dataset.licenses
	dataset.contributors
	dataset.crowdsourced?
	dataset.contributor_agreement_url
	dataset.distributions
	dataset.change_history
	
	# And more to come!

See example usage in a Rails project at [https://github.com/theodi/git-data-viewer](https://github.com/theodi/git-data-viewer)

![actual_data_kitten](http://i.imgur.com/wXZEkh7.gif)
