json.array! @candidates do |candidate|
	if candidate.user_id == current_user.id then
  		json.extract! candidate, :id, :character, :culture, :picture_url
  	end
end