class StaffEvent < ActiveRecord::Base
  self.inheritance_column = nil

  belongs_to :member, class?name: 'StaffMember', foreign_key: 'staff_member_id'
  alias_attribute :occurred_at, :created_at
end
