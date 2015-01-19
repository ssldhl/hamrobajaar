import hamrobajaar.Requestmap
import hamrobajaar.Role
import hamrobajaar.User
import hamrobajaar.UserRole

class BootStrap {

    def init = { servletContext ->
        //Use this to setup usermanagement for the first time
        /*def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)

        def testUser = new User(username: 'me', password: 'password')
        testUser.save(flush: true)

        UserRole.create testUser, adminRole, true

        assert User.count() == 1
        assert Role.count() == 1
        assert UserRole.count() == 1

        for (String url in [
              '/', '/index', '/index.gsp', '*//**//*favicon.ico',
              '*//**//*js*//**', '*//**//*css*//**', '*//**//*images*//**',
              '/login', '/login.*', '/login*//*',
              '/logout', '/logout.*', '/logout*//*']) {
            new Requestmap(url: url, configAttribute: 'permitAll').save()
        }*/
    }
    def destroy = {
    }
}
