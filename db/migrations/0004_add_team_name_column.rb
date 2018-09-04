Sequel.migration do
  up do
    add_column :teams, :name, String
  end

  down do
    drop_column :teams, :name
  end
end
