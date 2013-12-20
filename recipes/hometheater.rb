#
# Cookbook Name:: plexapp
# Recipe:: hometheater
#
# Author::
# Copyright::
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

apt_repository "libcec" do
  uri "http://ppa.launchpad.net/pulse-eight/libcec/ubuntu"
  distribution 'raring'
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "5F6EB4BE"
end

apt_repository "ffmpeg" do
  uri "http://ppa.launchpad.net/jon-severinsson/ffmpeg/ubuntu"
  distribution 'raring'
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "CFCA9579"
end

apt_repository "plexht" do
  uri "http://ppa.launchpad.net/plexapp/plexht/ubuntu"
  distribution 'raring'
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "EB7DFFFB"
end

# execute "apt-get update" do
#   command "sudo apt-get update"
# end

[ "paprefs", "pavucontrol", "plexhometheater" ].each do |pkg|
    package pkg
end