class Game < ApplicationRecord
    belongs_to :category
        
    has_attached_file :image
    
    validates_attachment_presence :image
    validates_attachment_size :image, :less_than => 5.megabytes
    validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
    
    

 def self.search(term)
  if term
    where('name LIKE ? OR description LIKE ?', "%#{term}%" , "%#{term}%").order('id DESC')
  else
    order('id DESC') 
  end
 end

end

