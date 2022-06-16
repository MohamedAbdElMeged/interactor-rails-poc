module CompanyInteractors
  class Create
    include Interactor
    def call
      create_company
    end
    def rollback
      context.company.destroy
    end
    private
    def create_company
        params = context.to_h
        company = Company.new(params)
        company.save!
        context.company = company.reload
        rescue  StandardError => e
          context.fail!(message:"error")
    end
  end
end
