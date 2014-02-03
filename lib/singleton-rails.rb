require 'active_record' rescue nil

if defined? ActiveRecord
  require "active_record/singleton"
  require "rails_admin/config/actions/singleton_aware_delete"
  require "rails_admin/config/actions/singleton_aware_index"
end