# **Quantum-HOA IoMT Security Simulation**

**Secure IoMT Data Transmission using Quantum Key Distribution (QKD) and Honeybee Optimization Algorithm (HOA)**

---

## **Overview**

This repository provides a **modular MATLAB implementation** for simulating a secure Internet of Medical Things (IoMT) system. It integrates **Quantum Key Distribution (QKD)** with **Honeybee Optimization Algorithm (HOA)** and **symmetric encryption (AES/Twofish)** to ensure secure IoMT data transmission. The framework also includes **DoS attack simulation** to test robustness and **parameter optimization** for enhanced security.


## **Features**

### **Quantum Key Distribution (QKD)**
- Generates quantum keys with configurable **channel noise**, **qubit loss**, **detector error**, and **eavesdropper interception**.
- Implements **privacy amplification** and **reconciliation efficiency**.

### **Honeybee Optimization Algorithm (HOA)**
- Optimizes security parameters including **swarm size**, **iterations**, **exploration/exploitation ratio**, and **local search radius**.
- Flexible objective function for custom security metric optimization.

### **Cryptography**
- Supports **AES-128 / AES-256** encryption using QKD-generated keys.
- Optional **Twofish encryption** (128/192/256 bits, 16 rounds) for experimentation.
- Generates **master key** and divides into **subkeys (p, q, r, s)** for encryption.

### **DoS Attack Simulation**
- Simulates **distributed Denial-of-Service (DoS)** attacks on IoMT networks.
- Configurable **number of attacker nodes**, **packets**, **packet size**, **spoofing probability**, and **attack duration**.

### **Dataset Handling & Preprocessing**
- Configurable **IoMT dataset size**.
- **Min-max normalization** for feature scaling.
- **SHA-256 hash** for dataset integrity verification.

### **Software & Hardware**
- MATLAB **R2022b** (64-bit) recommended.
- Toolboxes: **Optimization Toolbox**, **Communications Toolbox**, **Signal Processing Toolbox**.
- Hardware: Intel Core i7 @ 3.4GHz, 16 GB RAM. CPU-only execution; GPU optional.

---

## **Repository Structure**


