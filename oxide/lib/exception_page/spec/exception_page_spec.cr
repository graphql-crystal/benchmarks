require "./spec_helper"

describe ExceptionPage do
  it "allows debugging the exception page" do
    flow = ErrorDebuggingFlow.new

    flow.view_error_page
    flow.should_have_information_for_debugging
    flow.show_all_frames
    flow.should_be_able_to_view_other_frames
  end
end

class ErrorDebuggingFlow < LuckyFlow
  def view_error_page
    visit "/"
  end

  def should_have_information_for_debugging
    current_page.should have_element("@exception-title", text: "Something went very wrong")
    current_page.should have_element("@code-frames", text: "test_server.cr")
    click("@see-raw-error-message")
    current_page.should have_element("@raw-error-message")
  end

  def show_all_frames
    el("@show-all-frames").click
  end

  def should_be_able_to_view_other_frames
    el("@code-frame-file", "server.cr").click
    current_page.should have_element("@code-frame-summary", text: "->")
  end

  # A shim used for readibility in tests
  private def current_page
    self
  end
end
