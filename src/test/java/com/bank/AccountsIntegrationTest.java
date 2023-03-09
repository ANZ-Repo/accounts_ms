package com.bank;

import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import static io.restassured.RestAssured.given;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.DEFINED_PORT)
public class AccountsIntegrationTest {

    private static final String ACCOUNT_LIST_PATH= "http://localhost:8080/users/100/accounts";

    private static final String TRANSACTIONS_LIST_PATH= "http://localhost:8080/accounts/23456/transactions";
    @Test
    public void testAccountsList() {
       given().log().all()
               .when()
               .get(ACCOUNT_LIST_PATH)
               .then().log().all().statusCode(HttpStatus.OK.value());
    }

    @Test
    public void testTransactionList() {
        given().log().all()
                .when()
                .get(TRANSACTIONS_LIST_PATH)
                .then().log().all().statusCode(HttpStatus.OK.value());
    }
}
