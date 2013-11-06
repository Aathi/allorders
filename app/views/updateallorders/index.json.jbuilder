json.array!(@updateallorders) do |updateallorder|
  json.extract! updateallorder, :CREATED_DATE, :PERFORMER, :CATEGORY, :DURATION, :QUALITY, :DELIVERY_TIME, :ORDER_STATE, :UPLOAD_VIDEO, :Performer_TOTAL, :C4U_commission, :Gross_Total
  json.url updateallorder_url(updateallorder, format: :json)
end
