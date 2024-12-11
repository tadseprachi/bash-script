# bash-script

# **System Health Monitoring & Log File Analyzer Scripts**

## **Overview**

This repository contains two Bash scripts for system health monitoring and log file analysis.

1. **System Health Monitoring Script**: Monitors the health of a Linux system, checking CPU usage, memory usage, disk space, and running processes. If any of these metrics exceed predefined thresholds, an alert is displayed in the console or logged to a file.
   
2. **Log File Analyzer Script**: Analyzes web server logs (e.g., Apache or Nginx) and outputs important patterns such as the number of 404 errors, the most requested pages, and IP addresses with the most requests.

---

## **1. System Health Monitoring Script**

### **Overview**

The **System Health Monitoring Script** checks the current state of your system’s health. It monitors:

- **CPU Usage**
- **Memory Usage**
- **Disk Space**
- **Running Processes**

If any metric exceeds predefined thresholds, the script will provide an alert.

### **Usage**

1. Clone the repository to your local system:
   ```bash
   git clone https://github.com/your-username/repository-name.git
   cd repository-name
   ```

2. Make the script executable:
   ```bash
   chmod +x system_health_monitor.sh
   ```

3. Run the script:
   ```bash
   ./system_health_monitor.sh
   ```

### **Features**

- Monitors CPU usage and alerts if usage exceeds 80%.
- Monitors memory usage and alerts if usage exceeds 75%.
- Monitors disk space and alerts if available space is less than 10%.
- Lists running processes that consume excessive CPU or memory.

### **Example Output**

```bash
CPU Usage: 85% (ALERT: Exceeds threshold)
Memory Usage: 72%
Disk Space Usage: 8% (ALERT: Low space)
```

### **Customize the Thresholds**

You can modify the threshold values in the script. For example, change the following in the script for different CPU usage limits:

```bash
CPU_THRESHOLD=80
```

---

## **2. Log File Analyzer Script**

### **Overview**

The **Log File Analyzer Script** helps you analyze your web server logs (Apache or Nginx) and outputs:

- **Number of 404 errors**
- **Most requested pages**
- **IP addresses with the most requests**

### **Usage**

1. Clone the repository to your local system:
   ```bash
   git clone https://github.com/your-username/repository-name.git
   cd repository-name
   ```

2. Make the script executable:
   ```bash
   chmod +x log_analyzer.sh
   ```

3. Run the script with your log file as an argument:
   ```bash
   ./log_analyzer.sh /path/to/access.log
   ```

### **Features**

- Counts the number of **404 errors** in the log file.
- Lists the **most requested pages**.
- Shows the **IP addresses** with the most requests.

### **Example Output**

```bash
Analyzing log file: /var/log/nginx/access.log
---------------------------------
Number of 404 Errors:
25

Top 10 Most Requested Pages:
     50 /index.html
     40 /home
     35 /about
     20 /contact
     ...

Top 10 IP Addresses with Most Requests:
     100 192.168.1.1
      75 192.168.1.2
      50 192.168.1.3
      ...

Summary Report:
---------------------------------
Total Lines in Log: 1000
Total Unique IP Addresses: 50
Total Unique Requested Pages: 25
```



