package sample.handler;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Controller;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@Controller
public class CustomSuccessHandler implements AuthenticationSuccessHandler {

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, FilterChain chain, Authentication authentication) throws IOException, ServletException {

    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {

        if(authentication.isAuthenticated())
        {
            Collection<? extends GrantedAuthority> authorities=authentication.getAuthorities();
            for(GrantedAuthority grantedAuthority:authorities){
                if(grantedAuthority.getAuthority().contains("ROLE_ADMIN")){
                    redirectStrategy.sendRedirect(request,response,"/admin");
                }

                else if(grantedAuthority.getAuthority().contains("ROLE_USER")){
                    redirectStrategy.sendRedirect(request,response,"/user");
                }

                else if(grantedAuthority.getAuthority().contains("ROLE_DOCTOR")){
                    redirectStrategy.sendRedirect(request,response,"/doctor");
                }
                else{
                    redirectStrategy.sendRedirect(request,response,"/login");
                }
            }
        }
    }
}
