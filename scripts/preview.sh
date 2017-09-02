#!/bin/bash

open scripts/preview.html
bundle exec jekyll serve --incremental --drafts --config _config.yml,_config_dev.yml
