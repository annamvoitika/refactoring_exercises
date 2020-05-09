def send_correct_page(browser, window)
  active_browser = browser.type
  size_window = window.size
  if active_browser == "Safari" && size_window < "768px")
    return "You are using the Safari browser in a small window."
  else
    return "You are not using the Safari browser or have a big window."
  end
end
