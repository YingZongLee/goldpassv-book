package idv.yung.profolio.gold;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="gold")
public class Gold {
	
	@Id
	@Column
	private String date;
	
	@Column
	private String dollar;
	
	@Column
	private Double weight;
	
	@Column(name="buying_price")
	private BigDecimal buyingPrice;
	
	@Column(name="selling_price")
	private BigDecimal sellingPrice;
	
	public Gold() {
		super();
	}
	
	public Gold(List<String> sList) {
		this.date = sList.get(0);
		this.dollar = sList.get(1);
		this.weight = Double.valueOf(sList.get(2));
		this.buyingPrice = new BigDecimal(sList.get(3));
		this.sellingPrice = new BigDecimal(sList.get(4));
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDollar() {
		return dollar;
	}

	public void setDollar(String dollar) {
		this.dollar = dollar;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public BigDecimal getBuyingPrice() {
		return buyingPrice;
	}

	public void setByingPrice(BigDecimal buyingPrice) {
		this.buyingPrice = buyingPrice;
	}

	public BigDecimal getSellingPrice() {
		return sellingPrice;
	}

	public void setSellingPrice(BigDecimal sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	@Override
	public String toString() {
		return "Gold [date=" + date + ", dollar=" + dollar + ", weight=" + weight + ", buyingPrice=" + buyingPrice
				+ ", sellingPrice=" + sellingPrice + "]";
	}
}
