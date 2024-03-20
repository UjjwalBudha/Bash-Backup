# Bash-Backup

Inorder to make the script automatic you need to run the cornjob in the background

```crontab -e```

Add the following line at the buttom 

```0 17 * * * /path/to/your/script.sh```

This line means that the script will run at 5 PM every day. 
