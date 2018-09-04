Sequel.migration do
  up do
    create_table(:teams) do
      primary_key :id
    end
  end

  down do
    drop_table(:teams)
  end
end
