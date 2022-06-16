module Organizers
    class CreateCompanyOrganizer
        include Interactor::Organizer
        organize CompanyInteractors::Create, OwnerInteractors::Create
    end
end