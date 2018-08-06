Sequel.migration do
  up do
    create_table(:actions) do
      primary_key :id
      foreign_key :player_id, :players, null: false
      foreign_key :game_id, :games, null: false
      foreign_key :action_type_id, :action_types, null: false 
    end

    create_table(:action_types) do
      primary_key :id
      String :name
    end
  end

  down do
    drop_table(:actions)
    drop_table(:action_types)
  end
end