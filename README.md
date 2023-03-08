# spring-boot-microservices
In this project, two APIs are exposed to retrieve the account list and transacation history details.

## Technologies

- Spring Boot
- MVC framework
- Spring Data JPA
- H2 Repository 
- Spring Exception Handler
- Pagination Concept
- Maven 
- Mockito

## Running

To run each project either using your IDE or *mvn spring-boot:run* 

Retrieve Account List - http://localhost:8080/accounts/{CustomerId}?pageNo=?&pageSize=?

Sample Request and Response 

GET http://localhost:8080/accounts/100?pageSize=2

[
    {
        "customerId": 100,
        "accountNumber": 12345,
        "accountType": "savings",
        "accountName": "accname",
        "balanceDate": "2021-12-31T12:59:59.000+00:00",
        "currency": "AUD",
        "balance": "100"
    },
    {
        "customerId": 100,
        "accountNumber": 34567,
        "accountType": "savings",
        "accountName": "accname",
        "balanceDate": "2021-12-31T12:59:59.000+00:00",
        "currency": "AUD",
        "balance": "100"
    }
]

Retrieve Transaction History - http://localhost:8080/accounts/{AccountId}/transaction?pageNo=?&pageSize=?&sortBy=?

GET http://localhost:8080/accounts/12345/transactions

[
    {
        "accountNumber": 12345,
        "accountName": "savings",
        "transDate": "2021-12-31T12:59:59.000+00:00",
        "currency": "AUD",
        "creditAmount": "20",
        "debitAmount": "0",
        "transType": "credit"
    }
]
