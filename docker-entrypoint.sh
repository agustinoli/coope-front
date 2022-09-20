#!/bin/bash
set -e

echo "Installing dependencies with Yarn"

yarn

echo "Starting development server"

yarn run dev