class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  # rubocop:disable Naming/PredicateName
  def has_pass?
    if @pass_id == nil
      return false
    end
    return true
  end
  # rubocop:enable Naming/PredicateName

  def fits_ride?(ride_minimum_height)
    return true if ride_minimum_height <= @height
    return false
  end

  def allowed_to_ride?(ride_minimum_height)
    if has_pass?
      return true if ride_minimum_height <= @height
    end
    return false
  end
end
