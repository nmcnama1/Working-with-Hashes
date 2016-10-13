require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!
  @states = []
  @state = {:id=>'IN', :name=>'Indiana'}
  @state1 = {:id=>'MO', :name=>'Missouri'}
  @state2 = {:id=>'CA', :name=>'California'}
  @state3 = {:id=>'FL', :name=>'Florida'}
  @state4 = {:id=>'TN', :name=>'Tennessee'}
  @state5 = {:id=>'TX', :name=>'Texas'}
  @states.push(@state, @state1, @state2, @state3, @state4, @state5)
  @states.sort_by! {|state| state[:name]}
  erb :states, layout: :main
end
