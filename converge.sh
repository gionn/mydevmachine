#!/bin/bash
berks vendor cookbooks && sudo chef-client -z -o 'mydevmachine' -c chef.rb
