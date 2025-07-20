- we pull and run directly
  ```
    docker run -d --name redis --network ecom redis:7
  ```


- ad to ecom network
    ```docker network connect ecom <component>```

