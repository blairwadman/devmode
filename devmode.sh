#!/bin/bash

drush vset page_compression 0
drush vset preprocess_js 0
drush vset preprocess_css 0
drush upwd admin --password="pass"
drush en devel -y
drush en diff -y

drush cc all