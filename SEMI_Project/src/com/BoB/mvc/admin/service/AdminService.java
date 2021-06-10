package com.BoB.mvc.admin.service;

import static com.BoB.mvc.common.jdbc.JDBCTemplate.close;
import static com.BoB.mvc.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.BoB.mvc.admin.dao.BoardDAO;
import com.BoB.mvc.admin.dao.OrderDAO;
import com.BoB.mvc.admin.dao.OwnerDAO;
import com.BoB.mvc.admin.dao.AdminUserDAO;
import com.BoB.mvc.admin.dto.AdminUserDTO;
import com.BoB.mvc.admin.dto.CustomerBoardDTO;
import com.BoB.mvc.admin.dto.OwnerDetailDTO;
import com.BoB.mvc.admin.dto.PageInfoDTO;
import com.BoB.mvc.admin.dto.UserDetailDTO;
import com.BoB.mvc.admin.dto.cartDTO;
import com.BoB.mvc.admin.dto.orderDTO;
import com.BoB.mvc.admin.dto.orderDetailDTO;
import com.BoB.mvc.admin.dto.ownerDTO;
import com.BoB.mvc.admin.dto.ownerSalesDTO;

public class AdminService {

	
	private  OrderDAO OrderDAO;
	private  OwnerDAO OwnerDAO;
	private BoardDAO BoardDAO;
	private AdminUserDAO AdminUserDAO;
	
	public AdminService() {
		AdminUserDAO = new AdminUserDAO();
		OrderDAO = new OrderDAO();
		OwnerDAO = new OwnerDAO();
		BoardDAO = new BoardDAO();
	}
	
	public int selectTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = OrderDAO.selectTotalCount(con);
		
		close(con);
		
		return totalCount;
	}

	public List<orderDTO> selectOrderList(PageInfoDTO pageInfo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		
		List<orderDTO> orderList = OrderDAO.selectOrderList(con, pageInfo);
		
		close(con);
		
		
		return orderList;
	}

	public List<cartDTO> selectCartList(int orderNumber) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		List<cartDTO> cartList = OrderDAO.selectCartList(con,orderNumber);
		close(con);

		return cartList;
	}

	public List<orderDetailDTO> selectOrderDetail(int orderNumber) {
		// TODO Auto-generated method stub
		
		Connection con = getConnection();
		List<orderDetailDTO> orderDetailList = OrderDAO.selectOrderDetail(con,orderNumber);
		close(con);

		return orderDetailList;
	}

	public int searchOrderCount(String condition, String value) {
		Connection con = getConnection();
		int totalCount = OrderDAO.searchOrderCount(con,condition,value);
		close(con);

		return totalCount;
	}

	public List<orderDTO> searchOrderList(String condition, String value, PageInfoDTO pageInfo) {
		Connection con = getConnection();		
		
		List<orderDTO> orderList = OrderDAO.searchOrderList(con,pageInfo,condition,value);
		close(con);
		return orderList;
	}

	public int selectOwnerTotalCount() {
		Connection con = getConnection();
		
		int totalCount = OwnerDAO.selectOwnerTotalCount(con);
		
		close(con);
		
		return totalCount;
	}

	public List<ownerDTO> selectOwnerList(PageInfoDTO pageInfo) {
		Connection con = getConnection();
		
		List<ownerDTO> orderList = OwnerDAO.selectOwnerList(con, pageInfo);
		
		close(con);
		
		
		return orderList;
	}

	public int searchOwnerCount(String condition, String value) {
		Connection con = getConnection();
		int totalCount = OwnerDAO.searchOrderCount(con,condition,value);
		close(con);

		return totalCount;
	}

	public List<ownerDTO> searchOwnerList(String condition, String value, PageInfoDTO pageInfo) {
		Connection con = getConnection();		
		
		List<ownerDTO> orderList = OwnerDAO.searchOrderList(con,pageInfo,condition,value);
		close(con);
		return orderList;
	}

	public List<OwnerDetailDTO> selectOwnerDetail(int ownerNumber) {
		Connection con = getConnection();		
		
		List<OwnerDetailDTO> detailList = OwnerDAO.selectOwnerDetail(con,ownerNumber);
		close(con);
		return detailList;
	}

	public void updateAppr(String result, String ownerNum) {
		Connection con = getConnection();		

		int updateAppr = OwnerDAO.updateAppr(con,result,ownerNum);
		close(con);
		
		if(updateAppr == 1) {
			System.out.println("업데이트 성공");
		}else {
			System.out.println("업데이트 실패");

		}
	}

	public int selectStoBoardTotalCount() {
		Connection con = getConnection();
		
		int totalCount = BoardDAO.selectStoBoardTotalCount(con);
		
		close(con);
		
		return totalCount;
	}

	public List<CustomerBoardDTO> selectStoBoardList(PageInfoDTO pageInfo) {
		
		Connection con = getConnection();
		
		List<CustomerBoardDTO> boardList = BoardDAO.selectStoBoardList(con,pageInfo);
		
		return boardList;
	}

	public int searchBoardCount(String condition, String value) {
		Connection con = getConnection();
		int totalCount = BoardDAO.searchBoardCount(con,condition,value);
		close(con);

		return totalCount;
	}

	public List<CustomerBoardDTO> searchBoardList(String condition, String value, PageInfoDTO pageInfo) {
		Connection con = getConnection();		
		
		List<CustomerBoardDTO> boardList = BoardDAO.searchBoardList(con,pageInfo,condition,value);
		close(con);
		return boardList;
	}

	public int selectCusBoardTotalCount() {
		Connection con = getConnection();
		
		int totalCount = BoardDAO.selectCusBoardTotalCount(con);
		
		close(con);
		
		return totalCount;
	}

	public List<CustomerBoardDTO> selectCusBoardList(PageInfoDTO pageInfo) {
		Connection con = getConnection();
		
		List<CustomerBoardDTO> boardList = BoardDAO.selectCusBoardList(con,pageInfo);
		
		return boardList;
	}

	public int searchCusBoardCount(String condition, String value) {
		Connection con = getConnection();
		int totalCount = BoardDAO.searchCusBoardCount(con,condition,value);
		close(con);

		return totalCount;
	}

	public List<CustomerBoardDTO> searchCusBoardList(String condition, String value, PageInfoDTO pageInfo) {
		Connection con = getConnection();		
		
		List<CustomerBoardDTO> boardList = BoardDAO.searchCusBoardList(con,pageInfo,condition,value);
		close(con);
		return boardList;
	}

	public int selectUserCount() {
		Connection con = getConnection();
		
		int totalCount = AdminUserDAO.selectUserCount(con);
		
		close(con);
		
		return totalCount;
	}

	public List<AdminUserDTO> selectUserList(PageInfoDTO pageInfo) {
		Connection con = getConnection();
		
		List<AdminUserDTO> userList = AdminUserDAO.selectUserList(con,pageInfo);
		
		return userList;
	}

	public int searchUserCount(String condition, String value) {
		Connection con = getConnection();
		int totalCount = AdminUserDAO.searchUserCount(con,condition,value);
		close(con);

		return totalCount;
	}

	public List<AdminUserDTO> searchUserList(String condition, String value, PageInfoDTO pageInfo) {
		Connection con = getConnection();		
		
		List<AdminUserDTO> userList = AdminUserDAO.searchUserList(con,pageInfo,condition,value);
		close(con);
		return userList;
	}

	public List<UserDetailDTO> selectUserDetail(int userNumber) {
		Connection con = getConnection();		
		
		List<UserDetailDTO> detailList = AdminUserDAO.selectUserDetail(con,userNumber);
		close(con);
		return detailList;
	}

	public int selectSalesTodayCount(int ownerNum) {
		Connection con = getConnection();
		int totalCount = OwnerDAO.selectSalesTodayCount(con,ownerNum);
		close(con);

		return totalCount;
	}

	public List<ownerSalesDTO> selectSalesTodayList(PageInfoDTO pageInfo, int ownerNum) {
		Connection con = getConnection();
		
		List<ownerSalesDTO> salesList = OwnerDAO.selectSalesTodayList(con,pageInfo,ownerNum);
		
		return salesList;
	}

	public int searchMonthSalesCount(String stringValue, String ownerNum) {
		Connection con = getConnection();
		int totalCount = OwnerDAO.searchMonthSalesCount(con,stringValue,ownerNum);
		close(con);

		return totalCount;
	}

	public List<ownerSalesDTO> searchMonthSales(PageInfoDTO pageInfo, String stringValue, String ownerNum) {
		Connection con = getConnection();
		
		List<ownerSalesDTO> salesList = OwnerDAO.searchMonthSales(con,pageInfo,ownerNum,stringValue);
		
		return salesList;
	}
}
