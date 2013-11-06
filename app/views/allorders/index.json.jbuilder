json.array!(@allorders) do |allorder|
  json.extract! allorder, :CREATED_DATE, :PERFORMER, :CATEGORY, :DURATION, :QUALITY, :DELIVERY_TIME, :ORDER_STATE, :UPLOAD_VIDEO, :Performer_TOTAL, :C4U_commission, :Gross_Total
  json.url allorder_url(allorder, format: :json)
end
