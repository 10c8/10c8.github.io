#!/bin/bash

rm -rf _site_old
mv _site _site_old
bundle exec jekyll serve --incremental --drafts --config _config.yml,_config_dev.yml
