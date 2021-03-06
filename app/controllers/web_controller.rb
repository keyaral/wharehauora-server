# frozen_string_literal: true
class WebController < ApplicationController
  include Pundit

  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index
end
