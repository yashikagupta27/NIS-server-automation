# NIS Server–Client Setup on AWS EC2 using Terraform

## Project Overview

This project demonstrates how to configure a **Network Information Service (NIS)** server and client on AWS EC2 instances. The infrastructure is provisioned using **Terraform**, and the NIS configuration is performed on Linux instances to enable **centralized user authentication and management**.

NIS allows multiple machines in a network to share common configuration files such as user accounts. Instead of creating user accounts separately on every machine, the NIS server maintains the central database and clients retrieve authentication information from it.

## Objective

The objective of this project is to implement a centralized user management system in a Linux environment using NIS. AWS EC2 instances are used as the server and client machines, and Terraform is used to automate the infrastructure provisioning.

## Architecture

* **NIS Master Server** – Stores and manages the central user database.
* **NIS Client** – Retrieves user authentication information from the NIS server.
* Both instances communicate within the same AWS network.

```
NIS Server (EC2)  ----->  NIS Client (EC2)
        |
 Centralized User Database
```

## Tools & Technologies

* AWS EC2
* Terraform
* Linux (Amazon Linux 2)
* Network Information Service (NIS)

## Project Workflow

The project is completed in the following stages:

1. **Infrastructure Provisioning**

   * Use Terraform to create AWS resources such as EC2 instances and networking components.

2. **NIS Server Setup**

   * Install required NIS packages on the server.
   * Configure the NIS domain.
   * Initialize and start the NIS service.

3. **NIS Client Configuration**

   * Install required NIS client packages.
   * Configure the client to connect with the NIS server.
   * Enable NIS authentication.

4. **Verification**

   * Verify that the client successfully retrieves user information from the NIS server.
   * Test authentication and NIS connectivity.

## Expected Outcome

After completing the setup:

* The NIS server will maintain the centralized user database.
* The NIS client will retrieve user information from the server.
* Users can log in to the client machine using credentials managed by the NIS server.

## Conclusion

This project demonstrates how centralized authentication can be implemented in a Linux-based infrastructure using NIS. By combining Terraform for infrastructure provisioning and NIS for user management, the setup provides a practical example of Linux system administration and cloud infrastructure automation.
