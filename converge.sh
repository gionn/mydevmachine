#!/bin/bash
berks vendor cookbooks && sudo chef-client -z -c chef.rb
