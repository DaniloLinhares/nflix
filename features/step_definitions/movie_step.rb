Dado("que {string} é um novo filme") do |movie_code|
file = YAML.load_file(File,join(Dir.pwd, "feature/support/fixtures/movies.yaml"))
@movie = file[movie_code]
end

Quando("eu faço o cadstro deste filme") do

end

Então("devo ver o novo filme na lista") do

end