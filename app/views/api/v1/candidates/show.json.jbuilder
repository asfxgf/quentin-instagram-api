if @candidate.user_id == current_user.id then
	json.extract! @candidate, :id, :name, :address

	json.comments @candidate.comments do |comment|
	  json.extract! comment, :id, :content
	end
else
	return "error, unauthorized, it isnt your record"
end