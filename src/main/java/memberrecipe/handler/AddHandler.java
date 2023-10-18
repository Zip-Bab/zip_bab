package memberrecipe.handler;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import handler.Handler;
import lombok.extern.slf4j.Slf4j;
import memberrecipe.MemberRecipe;
import memberrecipe.MemberRecipeService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@Slf4j
public class AddHandler implements Handler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) {
        String view = "/index.jsp";
        if (request.getMethod().equals("GET")) {
            request.setAttribute("view", "/memberrecipe/create2.jsp");
        } else {
            try {
                String path = request.getServletContext().getRealPath("/images/memberrecipe/");
                File directory = new File(path);
                if (!directory.exists()){
                    directory.mkdirs();
                }
                MultipartRequest req = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
                File[] f = {req.getFile("img1"), req.getFile("img2"), req.getFile("img3"), req.getFile("img4"),
                        req.getFile("img5"), req.getFile("img6"), req.getFile("img7"), req.getFile("img8"),
                        req.getFile("img9"), req.getFile("img10"), req.getFile("img11"), req.getFile("img12")
                        , req.getFile("completePicture")};
                int memberId = Integer.parseInt(req.getParameter("memberId"));
                String title = req.getParameter("title");
                String subTitle = req.getParameter("subTitle");
                String way = req.getParameter("way");
                String ingredientInfo = req.getParameter("ingredientInfo");
                String manual_01 = req.getParameter("manual_01");
                String manual_02 = req.getParameter("manual_02");
                String manual_03 = req.getParameter("manual_03");
                String manual_04 = req.getParameter("manual_04");
                String manual_05 = req.getParameter("manual_05");
                String manual_06 = req.getParameter("manual_06");
                String manual_07 = req.getParameter("manual_07");
                String manual_08 = req.getParameter("manual_08");
                String manual_09 = req.getParameter("manual_09");
                String manual_10 = req.getParameter("manual_10");
                String manual_11 = req.getParameter("manual_11");
                String manual_12 = req.getParameter("manual_12");
                String calorie = req.getParameter("calorie");

                String[] imgs = new String[13];//업로드된 파일의 파일명을 저장할 배열
                for (int i = 0; i < f.length; i++) {
                    if (f[i] != null && f[i].length() != 0) {
                        imgs[i] = f[i].getName();
                    } else {
                        imgs[i] = "";
                    }
                }
                for (String s : imgs) {
                    System.out.println(s);
                }
                MemberRecipeService service = new MemberRecipeService();
                service.addMemberRecipe(
                        MemberRecipe.builder()
                                .memberRecipeId(0)
                                .memberId(memberId)
                                .title(title)
                                .subTitle(subTitle)
                                .way(way)
                                .ingredientInfo(ingredientInfo)
                                .manual_01(manual_01)
                                .manual_02(manual_02)
                                .manual_03(manual_03)
                                .manual_04(manual_04)
                                .manual_05(manual_05)
                                .manual_06(manual_06)
                                .manual_07(manual_07)
                                .manual_08(manual_08)
                                .manual_09(manual_09)
                                .manual_10(manual_10)
                                .manual_11(manual_11)
                                .manual_12(manual_12)
                                .manual_img_01(imgs[0])
                                .manual_img_02(imgs[1])
                                .manual_img_03(imgs[2])
                                .manual_img_04(imgs[3])
                                .manual_img_05(imgs[4])
                                .manual_img_06(imgs[5])
                                .manual_img_07(imgs[6])
                                .manual_img_08(imgs[7])
                                .manual_img_09(imgs[8])
                                .manual_img_10(imgs[9])
                                .manual_img_11(imgs[10])
                                .manual_img_12(imgs[11])
                                .completePicture(imgs[12])
                                .calorie(calorie)
                                .build()
                );

            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            view = "redirect:/memberrecipe/list.do?page=1";
        }

        return view;
    }
}
