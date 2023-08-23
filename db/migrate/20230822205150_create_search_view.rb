class CreateSearchView < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      CREATE VIEW search_view AS
            SELECT 
                id,
                first_name as search_field,
                first_name || ' ' || last_name as display_field,
                'user' as search_type
            FROM USERS
        UNION ALL
            SELECT 
                id, 
                last_name as search_field, 
                first_name || ' ' || last_name as display_field,
                'user' as search_type 
            FROM USERS
        UNION ALL
            SELECT 
                id, 
                name as search_field, 
                name as display_field,
                'tool' as search_type 
            FROM TOOLS
        UNION ALL
            SELECT 
                id, 
                tools.description as search_field, 
                name as display_field,
                'tool' as search_type 
            FROM TOOLS
    SQL
  end
  def down
    execute <<-SQL
      DROP VIEW IF EXISTS search_view
    SQL
  end
  end
