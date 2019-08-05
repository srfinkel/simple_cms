class AlterSections < ActiveRecord::Migration[5.2]
  def up 
    remove_column("sections", "content-type", :string)
    add_column("sections", "content_type", :string)
  end

  def down
    remove_column("sections", "content_type", :string)  
    add_column("sections", "content-type", :string)
  end
end
