TorqueBox.configure do
  stomplet SessionWatcherStomplet do
    route '/stomplet/session_watcher'
  end
end