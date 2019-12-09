class InActiveUserQuery
  def initialize(relation = User)
    @relation = relation
  end

  def all
    @relation.where(
      last_login: 6.months.ago,
      paid_account: false
    )
  end
end

inactive_user_query = InActiveUserQuery.new(User)
inactive_users = inactive_user_query.all
