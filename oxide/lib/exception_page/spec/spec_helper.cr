require "spec"
require "http"
require "lucky_flow"
require "../src/exception_page"
require "./support/*"

include LuckyFlow::Expectations

LuckyFlow.configure do |settings|
  settings.base_uri = "http://local.test"
  settings.stop_retrying_after = 40.milliseconds
end

LuckyFlow::Registry.register :webless do
  LuckyFlow::Webless::Driver.new(TestHandler.new)
end

LuckyFlow.default_driver = ENV.fetch("LUCKYFLOW_DRIVER", "webless")
LuckyFlow::Spec.setup

Habitat.raise_if_missing_settings!
