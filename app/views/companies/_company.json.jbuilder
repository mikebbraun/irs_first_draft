json.extract! company, :id, :company_name, :full_name, :email, :phone_number, :partnership, :employees, :contractors, :business_type, :location, :created_at, :updated_at
json.url company_url(company, format: :json)
