Sequel.migration do
  up do
    create_table(:players) do
      Integer :id, primary_key: true
      String :first_name
      String :last_name
      String :shoots
      String :position
    end
  end

  down do
    drop_table(:players)
  end
end