#!/bin/env ruby

require "sinatra"
require "./config/server"

include ServerConfig

ServerConfig::defaults
