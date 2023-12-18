package kr.co.sist.business.dining;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import oracle.jdbc.proxy.annotation.Post;


@Controller
public class BusinessDiningModifyController {
	@GetMapping("/BusinessManage/businessDining.do")
	public String goManageDining(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");

		List<BusinessDiningDomain> list = new ArrayList<BusinessDiningDomain>();
		list = DiningManageService.getInstance().searchDining(id);

		model.addAttribute("diningList", list);

		return "/BusinessManage/businessmanage_dining";
	}

	@PostMapping("/BusinessManage/businessdining.do")
	public String goNewDining(HttpSession session, HttpServletRequest request, Model model) {
		String id = (String) session.getAttribute("id");

		List<BusinessHotelDomain> list = DiningManageService.getInstance().searchHotel(id);

		model.addAttribute("hotellist", list);

		return "/BusinessManage/businessmanage_dining_info_empty";
	}

	@PostMapping("/BusinessManage/businessdining_insert.do")
	public String goNewDiningInsert(@RequestParam("menufile") MultipartFile[] menufiles,
			@RequestParam("diningfile") MultipartFile[] diningfiles, HttpSession session, HttpServletRequest request,
			Model model) {
		String uploadDir = "C:/Users/user/git/HCYHotel/HCYHotel/src/main/webapp/common/business/img"; // 업로드할 디렉토리 경로 설정
		String hotelcode = request.getParameter("selectHotel");
		DiningVO dVO=new DiningVO();
		dVO.setCapacity(Integer.parseInt(request.getParameter("capacity")));
		dVO.setDescription(request.getParameter("description"));
		dVO.setDiningname(request.getParameter("diningname"));
		dVO.setHotelcode(hotelcode);
		dVO.setInformation(request.getParameter("information"));
		dVO.setOperatingtime(request.getParameter("operatingtime"));
		System.out.println(dVO);
		DiningManageService.getInstance().insertDining(dVO);
		String diningcode=DiningManageService.getInstance().selectDiningcode();
		System.out.println(diningcode);
		File directory = new File(uploadDir);
		if (!directory.exists()) {
			directory.mkdirs();
		}
		FileVO fVO = new FileVO();
		for (int i = 0; i < menufiles.length; i++) {
			MultipartFile file = menufiles[i];
			if (!file.isEmpty()) {
				String originalFileName = file.getOriginalFilename();
				String fileExtension = originalFileName.substring(originalFileName.lastIndexOf('.'));
				if (".pdf".equals(fileExtension)) {
					// 새로운 파일명을 생성하기 위해 hotelcode 및 인덱스를 사용하여 파일명 생성
					String newFileName = diningcode + "_pdf" + (i + 1) + fileExtension;
					String filePath = uploadDir + File.separator + newFileName;

					fVO.setFilename(diningcode + "_pdf" + (i + 1));
					fVO.setDiningcode(diningcode);
					DiningManageService.getInstance().insertFile(fVO);
					try {
						file.transferTo(new File(filePath)); // 파일 저장

						// 파일 업로드 성공 시 추가적인 처리 가능
					} catch (IOException e) {
						e.printStackTrace();
						// 파일 업로드 중 오류가 발생한 경우 처리
					}
				} else {
					String alertMessage = "올바른 파일 형식이 아닙니다."; // 사용자에게 보여줄 경고 메시지
					request.setAttribute("alertMessage", alertMessage);
					return "BusinessManage/businessmanage_dining"; // 이전 페이지로 리디렉션
				}

			}
		}
		for (int i = 0; i < diningfiles.length; i++) {
			MultipartFile file = diningfiles[i];
			if (!file.isEmpty()) {
				String originalFileName = file.getOriginalFilename();
				String fileExtension = originalFileName.substring(originalFileName.lastIndexOf('.'));
				if (".jpg".equals(fileExtension)) {
					// 새로운 파일명을 생성하기 위해 hotelcode 및 인덱스를 사용하여 파일명 생성
					String newFileName = diningcode + "_" + (i + 1) + fileExtension;
					String filePath = uploadDir + File.separator + newFileName;
					
					fVO.setFilename(diningcode + "_" + (i + 1));
					fVO.setDiningcode(diningcode);
					DiningManageService.getInstance().insertFile(fVO);
					try {
						file.transferTo(new File(filePath)); // 파일 저장
						
						// 파일 업로드 성공 시 추가적인 처리 가능
					} catch (IOException e) {
						e.printStackTrace();
						// 파일 업로드 중 오류가 발생한 경우 처리
					}
				} else {
					String alertMessage = "올바른 파일 형식이 아닙니다."; // 사용자에게 보여줄 경고 메시지
					request.setAttribute("alertMessage", alertMessage);
					return "BusinessManage/businessmanage_dining"; // 이전 페이지로 리디렉션
				}
				
			}
		}
		return "/BusinessManage/businessmanage_dining";
	}
	@GetMapping("/BusinessManage/businessdining_modify.do")
	public String diningModify(HttpSession session, HttpServletRequest request, Model model) {
		String id=(String)session.getAttribute("id");
		String diningcode=request.getParameter("diningcode");
		List<BusinessHotelDomain> list = DiningManageService.getInstance().searchHotel(id);
		DiningDomain dd=DiningManageService.getInstance().selectDiningInfo(diningcode);
		List<FileDomain> filelist=DiningManageService.getInstance().searchFile(diningcode);
	
//		System.out.println(list);
//		System.out.println(dd);
//		System.out.println(filelist);
		model.addAttribute("diningcode",dd.getDiningcode());
		model.addAttribute("hotelcode",dd.getHotelcode());
		model.addAttribute("operatingtime",dd.getOperatingtime());
		model.addAttribute("information",dd.getInformation());
		model.addAttribute("description",dd.getDescription());
		model.addAttribute("capacity",dd.getCapacity());
		model.addAttribute("diningname",dd.getDiningname());
		
		model.addAttribute("filelist", filelist);
		model.addAttribute("hotellist", list);
		return "BusinessManage/businessmanage_dining_info";
	}
	@PostMapping("/BusinessManage/businessdining_update.do")
	public String updateDining(HttpSession session, HttpServletRequest request, Model model) {
		String hotelcode = request.getParameter("selectHotel");
		DiningUpdateVO duVO=new DiningUpdateVO();
		duVO.setCapacity(Integer.parseInt(request.getParameter("capacity")));
		duVO.setDescription(request.getParameter("description"));
		duVO.setDiningname(request.getParameter("diningname"));
		duVO.setHotelcode(hotelcode);
		duVO.setInformation(request.getParameter("information"));
		duVO.setOperatingtime(request.getParameter("operatingtime"));
		duVO.setDiningcode(request.getParameter("diningcode"));
		DiningManageDAO.getInstance().updateDining(duVO);
		return "BusinessManage/businessmanage_dining";
	}
	
}
