class CreateSearchView < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      CREATE VIEW search_view AS
        SELECT users.id, users.first_name  as search_field, 'user' as search_type from USERS
        UNION ALL
        SELECT users.id, users.last_name as search_field, 'user' as search_type from USERS
        UNION ALL
        SELECT tools.id, tools.name as search_field, 'tool' as search_type from TOOLS
        UNION ALL
        SELECT tools.id, tools.description as search_field, 'tool' as search_type from TOOLS
    SQL
  end
  def down
    execute <<-SQL
      DROP VIEW IF EXISTS search_view
    SQL
  end
  end
