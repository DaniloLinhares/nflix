Before do
    @login = LoginPage.new
    @movie_page = MoviePage.new
    @sidebar = SidebarView.new

    #page.driver.browser.manage.window.maximize
    page.current_window.resize_to(1440, 900)
end

Before("@login") do
    user = CONFIG["users"]["cat_maneger"]
    @login.go
    @login.with(user["email"], user["pass"])
end