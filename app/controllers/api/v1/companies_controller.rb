class Api::V1::CompaniesController < ApplicationController
  def index
    render json: Company.all
  end

  def create
    result = Organizers::CreateCompanyOrganizer.call(company_params)
    if result.success?
      render json: {company: result.company, owner: result.owner}
    else
      render json: result.message
    end
    
   
  end

  private

  def company_params
    params.require(:company).permit(:name, :address)
  end
end
