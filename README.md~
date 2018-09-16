# NEC-Hospital-Management-System

Steps to Run the project

Step 1: Change the current directory to NEC-Hospital-Management-System/

Step 2: Activate virtual enviroment.

	source hms/bin/activate
	
Step 3: Run requirements.txt(inside project i.e. NEC-Hospital-Management-System/HMS) file to install and create supporting environments.
	
	pip install -r requirements.txt
	
Step 4: Configure Mysql database with Django project. change required settings in the `settings.py`.  In settings.py you need to change your db `USERNAME` and `PASSWORD`

    a. if hms database already exits

        mysql -u root -p -D hms -o < sql3.sql

    b. if there is no databse named hms then follow these commands:
	
	    mysql -u <username> -p            // for login
    	create database hms;
	    use hms;
	    source sql3.sql;  	// .sql file should be located in the directory you are running this from. Otherwise, use full 				      
                        //paths. 

Step 5: Run Project


	python manage.py runserver


