/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bach.dev.util;

import java.util.List;
import bach.dev.data.model.OrderItem;

/**
 *
 * @author Admin
 */
public class Helper {

    public static double total(List<OrderItem> orderItemList) {
        double total = 0;
        for (OrderItem ord : orderItemList) {
            total += ord.getPrice() * ord.getQuantity();
        }
        return total;
    }

}
