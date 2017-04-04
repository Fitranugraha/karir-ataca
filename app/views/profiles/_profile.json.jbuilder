json.extract! profile, :id, :name, :user_id, :id_no, :nationality, :tribe, :birth_place, :birth_date, :age, :height, :weight, :blood, :sex, :married, :religion, :id_address, :current_address, :email, :phone, :mobile_phone, :created_at, :updated_at
json.url profile_url(profile, format: :json)
