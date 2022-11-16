package com.example.report;

public interface StatisticOrder {
	
	Long getTotalOrder();
	
	Long getTotalAccepted();
	
	Long getTotalWaiting();
	
	Long getTotalCanceled();
	
	Long getTotalMoney();
}
