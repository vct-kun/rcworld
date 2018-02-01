package com.vctran.test;

/**
 * Created by vctran on 15/12/15.
 */
public class User {

    private Long id;
    // test
    private String name;
    private String postalCode;
// test2

    private UserInfo userInfo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public void generateUserInfo() {
        UserInfo userInfo = new UserInfo();

        if (postalCode.substring(0,2).equals("78")) {
            userInfo.setLeague(2);
        } else {
            userInfo.setLeague(99);
        }

        this.userInfo = userInfo;
    }
}
