#!/bin/bash

# Copyright (c) 2018, Herman Bergwerf. All rights reserved.
# Use of this source code is governed by a CC BY-SA 3.0-style license
# that can be found in the LICENSE file.

# Install mustache CLI using:
# sudo npm install -g mustache

cd "$(dirname "$0")"
curl https://rawgit.com/Bowserinator/Periodic-Table-JSON/master/PeriodicTableJSON.json \
  | sed -e 's/Solid/solid/g' \
  | sed -e 's/Liquid/liquid/g' \
  | sed -e 's/Gas/gas/g' \
  | mustache - data.mustache \
  | dartfmt > data.dart
