json.array! @restaurants do |restaurant|
	if restaurant.user_id == current_user.id then
  		json.extract! restaurant, :id, :name, :address
  	end
end
