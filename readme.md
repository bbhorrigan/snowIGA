### **📄 `Read Me**

# Snowflake IGA Helper Scripts

 **Snowflake IGA Helper Scripts**  
This project provides a **collection of automation scripts** designed to **integrate Snowflake with IGA (Identity Governance and Administration) tools**, such as **SailPoint** and **Saviynt**.

## Features
Automates **user provisioning & deprovisioning** in Snowflake.  
**Synchronizes roles** between IGA tools and Snowflake.  
Supports **OAuth, Key Pair, and Password authentication** for Snowflake.  
Provides **audit logs & reporting** for access governance.  
Built-in **GitHub Actions CI/CD** for automated testing.

---
```
## 📂 Repository Structure
snowIGA
├── scripts/
│   ├── common/          # ✅ Shared utilities for Snowflake authentication & logging
│   │   ├── snowflake_connector.py
│   │   ├── config.yaml
│   │   ├── logging_setup.py
│   │   ├── utils.py
│   ├── sailpoint/       # ✅ SailPoint-specific automation scripts
│   │   ├── create_snowflake_users.py
│   │   ├── assign_roles.py
│   │   ├── revoke_access.py
│   │   ├── sync_sailpoint_snowflake.py
│   ├── saviynt/         # ✅ Saviynt-specific automation scripts
│   │   ├── provision_users.py
│   │   ├── sync_roles.py
│   │   ├── generate_access_reports.py
├── terraform/           # ✅ New Terraform module for Snowflake IGA automation
│   ├── main.tf              # Main Terraform configuration
│   ├── providers.tf         # Snowflake provider setup
│   ├── variables.tf         # Variables for flexibility
│   ├── outputs.tf           # Terraform outputs
│   ├── modules/
│   │   ├── users/           # ✅ User provisioning module
│   │   │   ├── users.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   │   ├── roles/           # ✅ Role management module
│   │   │   ├── roles.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   │   ├── policies/        # ✅ Network security policies
│   │   │   ├── policies.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   ├── terraform.tfvars     # User-specific values
│   ├── README.md            # Documentation for Terraform
├── docs/
│   ├── setup_guide.md
│   ├── API_reference.md
│   ├── integration_steps.md
│   ├── troubleshooting.md
├── tests/
│   ├── test_snowflake_connection.py
│   ├── test_provisioning.py
│   ├── test_role_sync.py
├── .github/workflows/
│   ├── ci.yml  # ✅ CI/CD pipeline for automated testing
├── .gitignore
├── LICENSE
├── README.md  # 👈 You are here! 

---
```
###  **Getting Started**

### 🔹 **1. Clone the Repository**
```bash
git clone https://github.com/bbhorrigan/snowIGA.git
cd snowIGA
```

### 🔹 **2. Configure Snowflake Credentials**
- Edit the `scripts/common/config.yaml` file:
```yaml
auth_type: "password"  # Options: password, oauth, keypair

snowflake:
  user: "your_user"
  password: "your_password"
  account: "your_snowflake_account"
  warehouse: "COMPUTE_WH"
  database: "MY_DATABASE"
  schema: "PUBLIC"
```
- If using **OAuth**, update the `oauth_token` field.
- If using **Key Pair Authentication**, provide the `private_key` path.

### 🔹 **3. Test the Snowflake Connection**
```bash
python scripts/common/snowflake_connector.py
```
If successful, you’ll see:
```
✅ Snowflake connection successful!
Snowflake Version: X.X.X
```

---

##  **Scripts Overview**
###  **Common Utilities**
| Script                    | Purpose |
|---------------------------|---------|
| `snowflake_connector.py`  | Establishes connection to Snowflake |
| `config.yaml`             | Stores authentication credentials |
| `logging_setup.py`        | Provides logging functions |
| `utils.py`                | Helper functions for various tasks |

### **SailPoint Integration**
| Script                         | Purpose |
|---------------------------------|---------|
| `create_snowflake_users.py`     | Automates user creation in Snowflake |
| `assign_roles.py`               | Assigns roles based on SailPoint mappings |
| `revoke_access.py`              | Removes user access as per governance rules |
| `sync_sailpoint_snowflake.py`   | Syncs SailPoint role assignments to Snowflake |

###  **Saviynt Integration**
| Script                      | Purpose |
|------------------------------|---------|
| `provision_users.py`         | Manages user provisioning via Saviynt |
| `sync_roles.py`              | Ensures Snowflake roles match Saviynt roles |
| `generate_access_reports.py` | Generates user access & audit reports |

---



---


```
