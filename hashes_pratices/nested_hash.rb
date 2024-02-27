class NestedHash
  def initialize
    @data =
    { 
      "file1" => { "alice" => ["read"], "bob" => ["read", "write"]},
      "database1" => {"carol" => ["write", "delete"], "alice" => ["read"]} 
    }
  end

  def add_permission(resource, user, permission)
    @data[resource][user] =  @data[resource][user] + [permission]
    @data
  end

  def remove_permission(resource, user, permission)
    @data[resource][user].delete(permission)
    @data
  end

  def list_permissions(user)
    permissions ={}
    @data.each do |resource, users|
      users.each do |usr, permission|
        if usr == user
          permissions[resource] = permission
        end
      end
    end
   permissions
  end

  def check_access(resource, user, permission)
   if @data[resource] && @data[resource][user] && @data[resource][user].include?(permission)
    return true
   end
  end
end
