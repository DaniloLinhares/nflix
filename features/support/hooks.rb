Before do
    @login = LoginPage.new
    @movie_page = MoviePage.new
    @sidebar = SidebarView.new
end

Before("@login") do
    @login.go
    @login.with("tony@stark.com","pwd123")
    sleep 3
end