class Booking < ApplicationRecord
    validates :start_date, presence: true

    belongs_to :lender, class_name: 'User'
    belongs_to :borrower, class_name: 'User'
    belongs_to :pet

    def avatar_for_lender
        Rails.application.routes.url_helpers.url_for(lender.avatar) if lender.avatar.attached?
      end

      def avatar_for_borrower
        Rails.application.routes.url_helpers.url_for(borrower.avatar) if borrower.avatar.attached?
      end
end
