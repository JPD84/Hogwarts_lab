
get '/students' do
  @students = Student.all()
  erb(:"students/index")
end

get '/students/new' do
  @houses = House.all()
  erb(:"students/new")
end

get '/students/:id' do
  @student = Student.find(params[:id])
  erb( :"students/show" )
end


# get '/students/:id/edit' do


post '/students' do
  @student = Student.new(params)
  @student.save
  erb ( :"students/new" )
end
