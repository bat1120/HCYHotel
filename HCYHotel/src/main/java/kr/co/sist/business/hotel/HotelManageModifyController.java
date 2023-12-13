package kr.co.sist.business.hotel;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@Controller
public class HotelManageModifyController {

	@GetMapping({ "/BusinessManage/businessHotel.do" })
	public String goManageHotel(HttpSession session, Model model) {
		session.setAttribute("id", "sajang1");
		String id = (String) session.getAttribute("id");
		HotelManageModifySevice hmms = HotelManageModifySevice.getInstance();
		model.addAttribute("hotelList", hmms.loadHotelList(id));
		return "BusinessManage/businessmanage_hotel";
	}

	@GetMapping({ "/BusinessManage/businessHotelGoModify.do" })
	public String goHotelModify(Model model, HttpServletRequest request, HttpSession session) {
		request.getParameter("hotelcode");
		session.setAttribute("hotelcode", request.getParameter("hotelcode"));
		HotelInfoDomain hid = new HotelInfoDomain();
		hid = HotelManageModifySevice.getInstance().loadHotelInfo(request.getParameter("hotelcode"));
		List<FileListDomain> list = HotelManageModifySevice.getInstance()
				.loadFileList(request.getParameter("hotelcode"));
		model.addAttribute("hotelname", hid.getHotelName());
		model.addAttribute("hoteladdr", hid.getHotelAddress());
		model.addAttribute("hoteldes", hid.getDescription());
		model.addAttribute("hotelrate", hid.getHotelRate());
		model.addAttribute("hoteltel", hid.getTel());
		model.addAttribute("breakfastprice", hid.getBreackfastprice());
		model.addAttribute("filelist", list);

		return "BusinessManage/businessmanage_hotel_info";
	}

	@PostMapping("/BusinessManage/businessHotelModify_update.do")
	public String uploadFiles(@RequestParam("hotelfile") MultipartFile[] files, HttpSession session,
			HttpServletRequest request,Model model) {
		HotelManageModifySevice hmms=HotelManageModifySevice.getInstance();

		hmms.deleteHotel((String)session.getAttribute("hotelcode"));
		String uploadDir = "C:/Users/user/git/HCYHotel/HCYHotel/src/main/webapp/common/business/img"; // 업로드할 디렉토리 경로 설정
		LocVO lVO=new LocVO();
		lVO.setSido(request.getParameter("sido"));
		lVO.setGugun(request.getParameter("gugun"));
		String loccode=hmms.searchLoccode(lVO);
		HotelVO hVO=new HotelVO();
		hVO.setLongitude(request.getParameter("longitude"));
		hVO.setBreackfastprice(Integer.parseInt(request.getParameter("breakfast")));
		hVO.setDescription(request.getParameter("description"));
		hVO.setHoteladdress(request.getParameter("sample6_address"));
		hVO.setHotelname(request.getParameter("hotelname"));
		hVO.setHotelrate(Integer.parseInt(request.getParameter("selectRate")));
		hVO.setId((String)session.getAttribute("id"));
		hVO.setLatitude(request.getParameter("Latitude"));
		hVO.setLoccode(loccode);
		hVO.setTel(request.getParameter("tel"));
		hmms.insertHotel(hVO);
		String hotelcode=hmms.searchHotelcode();
		File directory = new File(uploadDir);
		if (!directory.exists()) {
			directory.mkdirs();
		}
		FileVO fVO=new FileVO();
		List<String> fileList=new ArrayList<String>();
		for (int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];
			if (!file.isEmpty()) {
				String originalFileName = file.getOriginalFilename();
				String fileExtension = originalFileName.substring(originalFileName.lastIndexOf('.'));
				if (".jpg".equals(fileExtension)) {
					// 새로운 파일명을 생성하기 위해 hotelcode 및 인덱스를 사용하여 파일명 생성
					String newFileName = hotelcode + "_" + (i+1) + fileExtension;
					String filePath = uploadDir + File.separator + newFileName;
					fileList.add(hotelcode + "_" + (i+1));
				
					fVO.setFilename(hotelcode + "_" + (i+1));
					fVO.setHotelcode(hotelcode);
					hmms.insertFile(fVO);
					try {
						file.transferTo(new File(filePath)); // 파일 저장

						// 파일 업로드 성공 시 추가적인 처리 가능
					} catch (IOException e) {
						e.printStackTrace();
						// 파일 업로드 중 오류가 발생한 경우 처리
					}
				}else {
					 String alertMessage = "올바른 파일 형식이 아닙니다."; // 사용자에게 보여줄 경고 메시지
		                request.setAttribute("alertMessage", alertMessage);
		                return "BusinessManage/businessmanage_hotel_info"; // 이전 페이지로 리디렉션
				}
				
			}
		}
	
		
		// 파일 업로드 완료 후 다음 동작 수행 (예를 들어, 업로드 완료 페이지로 리다이렉트)
		return "BusinessManage/businessmanage_hotel"; // 업로드 성공 페이지로 리턴
	}
	@GetMapping("/BusinessManage/businessHotelInsert.do")
	public String hotelInsert() {
		return "BusinessManage/businessmanage_hotel_info_empty";
	}
	
	@PostMapping("/BusinessManage/businessHotelModify_insert.do")
	public String insertHotel(@RequestParam("hotelfile") MultipartFile[] files, HttpSession session,
			HttpServletRequest request,Model model) {
		HotelManageModifySevice hmms=HotelManageModifySevice.getInstance();

		String uploadDir = "C:/Users/user/git/HCYHotel/HCYHotel/src/main/webapp/common/business/img"; // 업로드할 디렉토리 경로 설정
		LocVO lVO=new LocVO();
		lVO.setSido(request.getParameter("sido"));
		lVO.setGugun(request.getParameter("gugun"));
		String loccode=hmms.searchLoccode(lVO);
		HotelVO hVO=new HotelVO();
		hVO.setLongitude(request.getParameter("longitude"));
		hVO.setBreackfastprice(Integer.parseInt(request.getParameter("breakfast")));
		hVO.setDescription(request.getParameter("description"));
		hVO.setHoteladdress(request.getParameter("sample6_address"));
		hVO.setHotelname(request.getParameter("hotelname"));
		hVO.setHotelrate(Integer.parseInt(request.getParameter("selectRate")));
		hVO.setId((String)session.getAttribute("id"));
		hVO.setLatitude(request.getParameter("Latitude"));
		hVO.setLoccode(loccode);
		hVO.setTel(request.getParameter("tel"));
		hmms.insertHotel(hVO);
		String hotelcode=hmms.searchHotelcode();
		File directory = new File(uploadDir);
		if (!directory.exists()) {
			directory.mkdirs();
		}
		FileVO fVO=new FileVO();
		List<String> fileList=new ArrayList<String>();
		for (int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];
			if (!file.isEmpty()) {
				String originalFileName = file.getOriginalFilename();
				String fileExtension = originalFileName.substring(originalFileName.lastIndexOf('.'));
				if (".jpg".equals(fileExtension)) {
					// 새로운 파일명을 생성하기 위해 hotelcode 및 인덱스를 사용하여 파일명 생성
					String newFileName = hotelcode + "_" + (i+1) + fileExtension;
					String filePath = uploadDir + File.separator + newFileName;
					fileList.add(hotelcode + "_" + (i+1));
				
					fVO.setFilename(hotelcode + "_" + (i+1));
					fVO.setHotelcode(hotelcode);
					hmms.insertFile(fVO);
					try {
						file.transferTo(new File(filePath)); // 파일 저장

						// 파일 업로드 성공 시 추가적인 처리 가능
					} catch (IOException e) {
						e.printStackTrace();
						// 파일 업로드 중 오류가 발생한 경우 처리
					}
				}else {
					 String alertMessage = "올바른 파일 형식이 아닙니다."; // 사용자에게 보여줄 경고 메시지
		                request.setAttribute("alertMessage", alertMessage);
		                return "BusinessManage/businessmanage_hotel_info"; // 이전 페이지로 리디렉션
				}
				
			}
		}
	
		
		// 파일 업로드 완료 후 다음 동작 수행 (예를 들어, 업로드 완료 페이지로 리다이렉트)
		return "BusinessManage/businessmanage_hotel"; // 업로드 성공 페이지로 리턴
	}
	

	
	@GetMapping({ "/BusinessManage/businessHotelDelete.do" })
	public String hotelErase(String hotelCode) {
		return "";
	}
}
