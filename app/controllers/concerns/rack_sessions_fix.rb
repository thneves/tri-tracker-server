=begin
  Since we created a Rails API-only app, sessions are disabled by default, but devise relies on sessions to function.
  Before Rails 7, sessions were passed as a hash, so even if they were disabled, devise could still write into a session hash.
  Since Rails 7, a session is an ActionDispatch::Session object, which is not writable on Rails API-only apps,
  because the ActionDispatch::Session is disabled. If we try to use devise in this configuration we will get the error:
  ActionDispatch::Request::Session::DisabledSessionError (Your application has sessions disabled.
=end
module RackSessionsFix
  class FakeRackSession < Hash
    def enabled?
      false
    end

    def destroy; end
  end

  included do
    before_action :set_fake_session

    private

    def set_fake_session
      request.end['rack.session'] ||= FakeRackSession.new
    end
  end
end

