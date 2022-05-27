# if the form is submited and review properly saved
# 1. insert the comment on the right place
# 2. have an empty form again

# if not, I want to render the form with errors

if @review.persisted?
  json.form json.partial!("reviews/form.html.erb", restaurant: @restaurant, review: Review.new)
  json.inserted_item json.partial!("restaurants/review.html.erb", review: @review)
else
  json.form json.partial!("reviews/form.html.erb", restaurant: @restaurant, review: @review)
end

