
class HorsePage < SitePrism::Page
    set_url '/login'
    element :username, '#email'
    element :password, 'input[type=password]'
    element :sign_in, '.login-button'
    element :alert, '.alert-warning'
    element :title_view, '#page_title'
    element :usermenu, '#menu li a[data-toggle=dropdown]'
    element :logout_link, '#menu li a[href$=logout]'

    def do_login(u,p)
        self.username.set u
        self.password.set p
        self.sign_in.click
    end

    def do_logout
        self.usermenu.click
        self.logout_link.click
    end
end
