class Student
  
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end


def get_name
  return @name
end

def get_cohort
  return @cohort
end

def update_name(new_name)
  return @name = new_name
end

def update_cohort(new_cohort)
  return @cohort = new_cohort
end

def talk
  p "I can talk"
end

def say_favourite_language(language)
  p "I love #{language} !!!"
end


end
