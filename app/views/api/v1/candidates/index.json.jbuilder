json.array! @candidates do |candidate|
	if candidate.user_id == current_user.id then
  		json.extract! candidate, :id, :name, :address
  	end
end
