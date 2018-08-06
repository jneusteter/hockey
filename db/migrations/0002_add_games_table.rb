Sequel.migration do
  up do
    create_table(:games) do
      String :id, primary_key: true
    end
  end

  down do
    drop_table(:games)
  end
end