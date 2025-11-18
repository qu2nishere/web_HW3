import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        // Thiết lập encoding
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String url = "/index.jsp"; // trang mặc định

        // Lấy action từ request
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // mặc định
        }

        // Thực hiện action
        if (action.equals("join")) {
            url = "/index.jsp";  // trang join
        } else if (action.equals("add")) {
            // Lấy dữ liệu từ form
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dateOfBirth = request.getParameter("dateofbirth");
            String hear = request.getParameter("hear");
            String[] askMails = request.getParameterValues("askmail"); 
            String askMail = null;
            if (askMails != null && askMails.length > 0) {
                askMail = askMails[0]; 
            }
            String contactOption = request.getParameter("contactoptions"); // name trùng 'contactoptions'

            User user = new User(firstName, lastName, email, dateOfBirth, hear, askMail, contactOption);
            request.setAttribute("user", user);



            System.out.println(firstName + lastName +  email + dateOfBirth + hear + askMail + contactOption);
            request.setAttribute("user", user);
            url = "/survey.jsp";
        }

        // Forward tới URL tương ứng
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response) 
                         throws ServletException, IOException {
        doPost(request, response);
    }
}
