module OwnerInteractors
    class Create
        include Interactor
        def call
            create_owner
        end
        def rollback
            context.owner.destroy
        end
        private
        def create_owner
            owner = Owner.new
            owner.company_id = context.company.id
            owner.email = Faker::Internet.free_email
            owner.password = Faker::PhoneNumber.phone_number # to do  add method to generate new password
            owner.save!
            context.owner = owner.reload
            rescue StandardError => e
                context.fail!(message: "error owner")
        end
        
    end
end