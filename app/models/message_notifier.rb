class MessageNotifier
  def creation_message(user)
    Message.create(content: "created_user-#{user.id}: #{user.name}")
  end

  def destroy_message(user)
    Message.create(content: "deleted_user-#{user.id}: #{user.name}")
  end
end
