FactoryGirl.define do
  factory :restaurant do
    camis {"12345148"}
    dba {"Sweet Eats"}
    boro {"2"}
    building {"586"}
    street {"Broad Ave"}
    zipcode {"12341"}
    phone {"7181230567"}
    cuisinecode {"05"}
    inspdate Time.now.strftime("%Y-%m-%d %H:%M:%S")
    action {"F"}
    violcode {"06A"}
    score {"10"}
    currentgrade {"B"}
    gradedate Time.now.strftime("%Y-%m-%d %H:%M:%S")
    recorddate Time.now.strftime("%Y-%m-%d %H:%M:%S")
  end
end
