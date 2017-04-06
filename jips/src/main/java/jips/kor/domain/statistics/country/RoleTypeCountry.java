package jips.kor.domain.statistics.country;

/**
 * Created by yhhan on 2016. 4. 22..
 */
public enum RoleTypeCountry {
    AUTHOR("AUTHOR"),
    REVIEWER("REVIEWER");


    private String code;

    RoleTypeCountry(String code) {
        this.code = code;
    }

    public String getValue() {
        return code;
    }

    public static RoleTypeCountry fromString(String text) {
        if (text != null) {
            for (RoleTypeCountry roleTypeCountry: RoleTypeCountry.values()) {
                if (text.equals(roleTypeCountry.code)) {
                    return roleTypeCountry;
                }
            }
        }
        return null;
    }

}
