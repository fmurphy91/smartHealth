json.extract! doctor, :id, :firstname, :lastname, :phone, :address, :consultation, :user_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
