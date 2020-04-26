Dado("que {string} é um novo filme") do |movie_code|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/movie.yaml"))
    @movie = file[movie_code]
end

Quando("eu faço o cadastro deste filme") do
    @movie_page.add
    @movie_page.create(@movie)
    sleep 3
end

Então("devo ver o novo filme na lista") do

end