#
# Copyright (C) 2020 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

class AddNotificationPolicyOverideToDelayedMessage < ActiveRecord::Migration[5.2]
  tag :predeploy
  disable_ddl_transaction!
  include MigrationHelpers::AddColumnAndFk

  def change
    add_column_and_fk :delayed_messages, :notification_policy_override_id, :notification_policy_overrides
  end
end
