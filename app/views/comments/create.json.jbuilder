json.text @comment.text
json.user_id @comment.user.id
json.user_name @comment.user.name
json.date @comment.created_at.to_s(:datetime_jp)