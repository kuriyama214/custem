class User < ApplicationRecord
    validates_presence_of :family_name,:family_name_kana,:first_name,:first_name_kana,:gender,:birthday,:job,:tell_number,:email,:post_code,:address,:building,　presences: true
    validates :family_name,:family_name_kana,:first_name,:first_name_kana,:tell_number, length: { in: 1..11 } 
    validates :tell_number,:age,:post_code, numericality: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    validates :family_name_kana,:first_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}

    def name
        "#{family_name} #{first_name}"
    end
    
    def name_kana
        "#{family_name_kana} #{first_name_kana}"
    end
    
    def self.search(search)
      return User.all unless search
      User.where(['family_name LIKE ? or first_name LIKE ?', "%#{search}%", "%#{search}%"])
    end
end
