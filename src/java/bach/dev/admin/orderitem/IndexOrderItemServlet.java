/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package bach.dev.admin.orderitem;

import bach.dev.admin.BaseAdminServlet;
import bach.dev.data.dao.DatabaseDao;
import bach.dev.data.dao.OrderDao;
import bach.dev.data.dao.OrderItemDao;
import bach.dev.data.model.Order;
import bach.dev.data.model.OrderItem;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
/**
 *
 * @author Welcome
 */
public class IndexOrderItemServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        Order order = orderDao.find(orderId);
        
        OrderItemDao orderItemDao = DatabaseDao.getInstance().getOrderItemDao();
        List<OrderItem> orderItemList = orderItemDao.findByOder(orderId);
        
        request.setAttribute("order", order); 
        request.setAttribute("orderItemList", orderItemList);         
        request.getRequestDispatcher("admin/orderitem/index.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
