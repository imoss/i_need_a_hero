class EmployeeFinder
  attr_accessor :ids

  def initialize(ids)
    @ids = ids
  end
end

f = EmployeeFinder.new([1,2,3])

f.nondestructive_method => "1,2,3"

f.destructive_method!

f.nondestructive_method => '1,2,3,1'

class SyncOperation
  def initialize
    @success = false
  end

  def run!
    begin
      quuery_the_things
      update_the_things
      log_the_messages # => FatalError
      ping_slack
      @success = true
      return @success
    rescue
      log_the_error
    end
  end

  def success
    @success
  end

  def success=(val)
    self[:success] = val
  end
end

o = AsyncOperation.new

o.run!

o.success?

