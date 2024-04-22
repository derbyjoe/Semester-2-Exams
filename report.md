## STEP 1: Vagrantfile Configuration

1.  Initialised vagrant on the project folder; this created the `Vagrantfile` and ` .vagrant` folder
![vagrant file](https://github.com/derbyjoe/Semester-2-Exams/blob/main/Screenshot%28204%29.png?raw=true)
This Vagrantfile defines two virtual machines, "Master" and "Slave", using the wesdemos/ubuntu2404-arm base box.

## STEP 2: Configuration of the LAMP Stack:

-   Developed a bash script on the Master node with the following tasks:
    -   Installation of LAMP stack.
    -   Cloning the desired PHP application from GitHub.
    -   Configuration of Apache and MySQL to support the PHP application.
-   Ensured the script was marked executable and tested for idempotence and readability.

## STEP 3: Creation of Ansible Playbook:

-   **Wrote an Ansible playbook with the following tasks:**
    -   Execution of the bash script on the Slave node.
    -   Verification of the accessibility of the PHP application via the Slave node’s IP address, including taking a screenshot for evidence.
    -   Setting up a cron job on the Slave node to check and log server uptime at 12 AM daily.

## STEP 4: Testing and Verification:

-   Executed the Ansible playbook.
-   Confirmed the PHP application's functionality by accessing it through a web browser pointed at the Slave VM's IP address.
![VM's IP address](https://github.com/derbyjoe/Semester-2-Exams/blob/main/Screenshot%28205%29.png?raw=true)
-   Checked the cron job logs on the Slave node to ensure proper execution![Cron job](https://github.com/derbyjoe/Semester-2-Exams/blob/main/Screenshot%28206%29.png?raw=true)

