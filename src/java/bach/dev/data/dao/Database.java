package bach.dev.data.dao;

import bach.dev.data.impl.CategoryImpl;
import bach.dev.data.impl.OrderImpl;
import bach.dev.data.impl.OrderItemImpl;
import bach.dev.data.impl.ProductImpl;
import bach.dev.data.impl.UserImpl;

public class Database extends DatabaseDao {

    @Override
    public ProductDao getProductDao() {
        // TODO Auto-generated method stub
        return new ProductImpl();
    }

    @Override
    public CategoryDao getCategoryDao() {
        // TODO Auto-generated method stub
        return new CategoryImpl();
    }

    @Override
    public OrderItemDao getOrderItemDao() {
        // TODO Auto-generated method stub
        return new OrderItemImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        // TODO Auto-generated method stub
        return new OrderImpl();
    }

    @Override
    public UserDAO getUserDao() {
        // TODO Auto-generated method stub
        return new UserImpl();
    }

}
