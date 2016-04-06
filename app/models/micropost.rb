class Micropost < ActiveRecord::Base
    belongs_to :user
    validates :user_id, presence:true, numericality:{only_integer:true}
    
    validate :verifica
    
    
    
    validates :content, length: { maximum: 140 }
    
    private
        def verifica
            errors.add(:user_id, "invalido") unless User.exists?(self.user_id)
        end
    
    
end
