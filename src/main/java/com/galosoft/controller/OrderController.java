package com.galosoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.galosoft.model.Cart;
import com.galosoft.model.Customer;
import com.galosoft.model.CustomerOrder;
import com.galosoft.service.CartService;
import com.galosoft.service.CustomerOrderService;

@Controller
public class OrderController {
	
	@Autowired 
	private CartService cartService;
	
	@Autowired 
	private CustomerOrderService customerOrderService;
	
	@RequestMapping("/order/{cartId}")
	public String createOrder(@PathVariable("cartId") int cartId) {
		CustomerOrder customerOrder = new CustomerOrder();
		Cart cart = cartService.getCartById(cartId);
		customerOrder.setCart(cart);
		
		Customer customer = cart.getCustomer();
		customerOrder.setCustomer(customer);
		customerOrder.setBillingAddress(customer.getBillingAddress());
		customerOrder.setShippingAddress(customer.getShippingAddress());
		
		customerOrderService.addCustomerOrder(customerOrder);
		
		return "redirect:/checkout?cartId=" + cartId;
	}
	

}
