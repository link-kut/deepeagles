package jips.kor.domain.statistics.country;

import java.util.Map;

/**
 * Created by yhhan on 2016. 4. 16..
 */
public class ARCountry {
    private int id;
    private int total;
    private RoleTypeCountry roleTypeCountry;
    private String countryCodeMapFiltered;
    private int count;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public RoleTypeCountry getRoleTypeCountry() {
        return roleTypeCountry;
    }

    public void setRoleTypeCountry(RoleTypeCountry roleTypeCountry) {
        this.roleTypeCountry = roleTypeCountry;
    }

    public String getCountryCodeMapFiltered() {
        return countryCodeMapFiltered;
    }

    public void setCountryCodeMapFiltered(String countryCodeMapFiltered) {
        this.countryCodeMapFiltered = countryCodeMapFiltered;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Countries{" +
                "id=" + id +
                ", total=" + total +
                ", roleTypeCountry=" + roleTypeCountry +
                ", countryCodeMapFiltered=" + countryCodeMapFiltered +
                '}';
    }
}
