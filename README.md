# **Quantum-HOA IoMT Security Simulation**

**Secure IoMT Data Transmission using Quantum Key Distribution (QKD) and Honeybee Optimization Algorithm (HOA)**


## **Overview**

This repository provides a **modular MATLAB implementation** for simulating a secure Internet of Medical Things (IoMT) system. It integrates **Quantum Key Distribution (QKD)** with **Honeybee Optimization Algorithm (HOA)** and **symmetric encryption (AES/Twofish)** to ensure secure IoMT data transmission. The framework also includes **DoS attack simulation** to test robustness and **parameter optimization** for enhanced security.


## **Figures & System Overview**

### **System Model**
<p align="center">
<img src="https://github.com/shahid3167/IoMT-Based-HealthcareSystems-with-Meta-Heuristic-Quantum-Cryptography-and-Honeybee-Optimization-/blob/main/Figures/SystemModel.jpg" width="700" height="600">
<p align="center">
  Fig.1.  System model of the proposed approach for IoMT highlighting overall security mechanism with the interactive functional components.

### **Quantum Key Distribution (QKD)**
<p align="center">
<img src="https://github.com/shahid3167/IoMT-Based-HealthcareSystems-with-Meta-Heuristic-Quantum-Cryptography-and-Honeybee-Optimization-/blob/main/Figures/QKD.jpg" width="600" height="700">
<p align="center">

  Fig.2.  Quantum key distribution and the data encoding and decoding between Alice and Bob.


### **Data Encoding**
<p align="center">
<img src="https://github.com/shahid3167/IoMT-Based-HealthcareSystems-with-Meta-Heuristic-Quantum-Cryptography-and-Honeybee-Optimization-/blob/main/Figures/EncryptionModel.jpg" width="800" height="600">
<p align="center">

  Fig.3.  Encoding mechanism of IoMT data into quantum states.

### **Twofish Encryption Mechanism**
<p align="center">
<img src="https://github.com/shahid3167/IoMT-Based-HealthcareSystems-with-Meta-Heuristic-Quantum-Cryptography-and-Honeybee-Optimization-/blob/main/Figures/TwoFishMechanism.jpg" width="500" height="700">
<p align="center">

  Fig.4.  Master key formation and quantum key division into subkeys via the Twofish mechanism.


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


## **Results**

The simulation produces the following outputs:

### **Post Attack Performance**
<p align="center">
<img src="https://github.com/shahid3167/IoMT-Based-HealthcareSystems-with-Meta-Heuristic-Quantum-Cryptography-and-Honeybee-Optimization-/blob/main/Figures/Table3.jpg" width="600" height="700">
<p align="center">

  Fig.4.  Master key formation and quantum key division into subkeys via the Twofish mechanism.

Example MATLAB console output for a run:

