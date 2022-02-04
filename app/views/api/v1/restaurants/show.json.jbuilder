if @restaurant.user_id == current_user.id then
	json.extract! @restaurant, :id, :name, :address

	json.comments @restaurant.comments do |comment|
	  json.extract! comment, :id, :content
	end
else
	return "error, unauthorized, it isnt your record"
end