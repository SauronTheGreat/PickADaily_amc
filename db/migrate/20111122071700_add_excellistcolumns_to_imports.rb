class AddExcellistcolumnsToImports < ActiveRecord::Migration
  def change
    add_column :imports, :excel_list_file_name, :string

    add_column :imports, :excel_list_content_type, :string
    add_column :imports, :excel_list_file_size, :integer
    add_column :imports, :excel_list_updated_at, :datetime
  end
end
