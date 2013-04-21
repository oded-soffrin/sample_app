object @user
attributes :id, :name, :email
child :microposts => :tweets do |f|
    extends "microposts/show"
end