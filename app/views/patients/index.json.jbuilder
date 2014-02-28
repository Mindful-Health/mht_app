json.array!(@patients) do |patient|
  json.extract! patient, :name, :email, :condition, :phone, :deviceId
  json.url patient_url(patient, format: :json)
end