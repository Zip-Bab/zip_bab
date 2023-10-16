package bookmark.handler;

import bookmark.Bookmark;
import bookmark.BookmarkService;
import handler.Handler;
import member.Member;
import recipe.Recipe;
import recipe.RecipeService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

public class BookmarkHandler implements Handler {
    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) {
        String view="/index.jsp";
        HttpSession session = request.getSession();
        int currentPage = Integer.parseInt(request.getParameter("pageNum"));
        int recipeId = Integer.parseInt(request.getParameter("recipeId"));
        if ((session.getAttribute("loginId")) == null) {
            return "responsebody/<script>alert('로그인 해주세요.');history.back();</script>";
        }
        int memberId = ((Member)session.getAttribute("loginId")).getMemberId();
        String url = request.getContextPath()+"/recipe/listByPage.do?pageNum="+currentPage;
        BookmarkService service = new BookmarkService();
        RecipeService rservice = new RecipeService();
        Recipe r = rservice.getById(recipeId);
        Bookmark b = service.checkBookmark(recipeId, memberId);


        if (b == null) {
            try {
                service.addBookmark(new Bookmark(0, recipeId, memberId));
                response.setContentType("text/html; charset=utf-8");
                PrintWriter w = response.getWriter();
                String msg = r.getTitle() + " 레시피가 북마크에 추가됐습니다.";
                w.write("<script>alert('" + msg + "'); window.location.href='" + url + "';</script>");
                w.flush();
                w.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            try {
                service.delBookmark(recipeId, memberId);
                response.setContentType("text/html; charset=utf-8");
                PrintWriter w = response.getWriter();
                String msg = r.getTitle() + " 레시피가 북마크에서 삭제됐습니다.";
                w.write("<script>alert('" + msg + "'); window.location.href='" + url + "';</script>");
                w.flush();
                w.close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        request.setAttribute("view","redirect:/recipe/listByPage.do?pageNum="+currentPage);
        return view;
    }
}
