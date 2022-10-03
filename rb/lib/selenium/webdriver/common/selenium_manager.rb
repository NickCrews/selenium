# frozen_string_literal: true

# Licensed to the Software Freedom Conservancy (SFC) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The SFC licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

module Selenium
  module WebDriver
    class SeleniumManager
      ROOT_PATH = "../../../../bin/selenium-manager"

      def self.driver_location(browser_name)
        path = File.expand_path(ROOT_PATH, __dir__)
        path << '.exe' if Platform.windows?
        `#{path} --browser #{browser_name}`.split("\t").last.strip
      end
    end # SeleniumManager
  end # WebDriver
end # Selenium
