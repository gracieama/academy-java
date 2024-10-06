package com.bptn.course.Friday_04_10_BigCoding;

public class Stock {

	// Create instance variables
	String tickerSymbol;
	String companyName;
	int price;
	double percentChange;
	int totalShares;
	long marketCap;

	// Constructor
	public Stock(String tickerSymbol, String companyName, int price, int totalShares) {
		this.tickerSymbol = tickerSymbol.toUpperCase();
		this.companyName = companyName;
		this.price = price;
		this.totalShares = totalShares;
		this.percentChange = 0;
		this.marketCap = totalShares * price;
	}

	// Create the methods
	public void adjustPrice(int change) {
		this.price += change;
		double changeAsDouble = change;
		double priceAsDouble = price;
		this.percentChange = (changeAsDouble / priceAsDouble) * 100;
		this.marketCap = totalShares * this.price;
	}

	public String toString() {
		return "Ticker Symbol: " + tickerSymbol + "\n" + "Company: " + companyName + "\n" + "Current Price: $" + price
				+ " (" + percentChange + "%)" + "\n" + "Market Cap: $" + marketCap;
	}

	// Don't modify the code below:
	public static void main(String[] args) {
		Stock stock = new Stock("GOOG", "Google, Inc.", 802, 6700);
		System.out.println(stock);
		stock.adjustPrice(20);
		System.out.println(stock);
	}
}

