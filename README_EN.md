# SpringPhoenix Big Data Project Based on Hadoop Cluster

This project configures a Hadoop cluster on a Linux virtual machine and uses technologies such as HBase, Hive, Phoenix, along with the Spring Boot and JSP tech stack to implement multiple functionalities. The aim is to explore and leverage these technologies for big data processing, real-time querying, and web-based interface presentation.

## Features

1. **HBase Integration**  
   Configured and used HBase for distributed, scalable storage, supporting real-time read/write operations on large datasets.

2. **Hive Data Warehousing**  
   Implemented Hive data warehousing functionality, allowing SQL-like queries on data in Hadoop, simplifying data analysis and integration with other big data tools.

3. **Phoenix SQL Layer Support**  
   Used Phoenix to provide SQL query capabilities for HBase, simplifying query operations on HBase and enabling real-time analytics and high-performance data processing.

4. **Web Interface Presentation**  
   Built a web application using the Spring Boot and JSP tech stack, allowing users to view query results and data statistics from HBase, Hive, and Phoenix, improving the system's usability and interactivity.

5. **Hot App Traffic Ranking**  
   - **Feature Description**: Display the traffic ranking of hot apps in the form of bar and pie charts.
   - **Query Criteria**: App traffic, operator, date (range)
   - **Feature Requirements**:  
     - If the user is an administrator, display data from all operators (CMCC, CUCC, CTCC).  
     - If the user is not an administrator, display data for the specific user type.

6. **Hot App Traffic Tracking**  
   - **Feature Description**: Display the traffic of each hot app at different time granularities (such as month, day, hour) in a line chart.
   - **Query Criteria**: Operator, network type, app traffic, hot app, time granularity, date (range)
   - **Feature Requirements**:  
     - If the user is an administrator, display data from all operators.  
     - If the user is not an administrator, display data for the specific user type.

7. **Typical Landmark Hot App Traffic Ranking**  
   - **Feature Description**: Display the traffic usage of hot apps in the form of a bar chart, sorted in descending order by traffic.
   - **Query Criteria**: App traffic, operator, network type, typical landmarks, date (range)
   - **Feature Requirements**:  
     - If the user is an administrator, display data from all operators.  
     - If the user is not an administrator, display data for the specific user type.

## System Requirements

- **Hadoop**: Hadoop 3.x or higher.
- **HBase**: HBase 2.x or higher.
- **Hive**: Apache Hive 3.x or higher.
- **Phoenix**: Apache Phoenix 5.x or higher.
- **Spring Boot**: Spring Boot 2.x or higher.
- **JSP**: JavaServer Pages (JSP) tech stack.
- **Linux Virtual Machine**: Used for configuring the Hadoop cluster.
- **Java**: Java 8 or higher.

## Installation & Configuration

### 1. Configure Hadoop Cluster
- Install and configure Hadoop following the official Hadoop documentation.
- Ensure that Hadoop's various daemons (HDFS, YARN, etc.) are running properly and configured correctly.

### 2. Install and Configure HBase
- Install and configure HBase following the official HBase documentation.
- Configure HBase to connect with the Hadoop cluster, enabling distributed storage.

### 3. Install and Configure Hive
- Install Hive and configure it to connect with the Hadoop cluster for data warehousing functionality.
- Configure the Metastore and set up the storage directories.

### 4. Install and Configure Phoenix
- Install Phoenix to enable SQL querying on HBase.
- Configure Phoenix to connect with HBase, supporting efficient querying.

### 5. Configure Spring Boot and JSP
- Use the Spring Boot framework to build the web application, handling front-end and back-end interactions.
- Use the JSP tech stack to provide dynamic webpage functionality, displaying query results from HBase, Hive, and Phoenix.

## Usage

### HBase
- Use HBase for real-time read and write operations on data.
- You can interact with the data stored in HBase through the HBase Shell or API.

### Hive
- Use HiveQL to run SQL queries on data in the Hadoop cluster.
- Data is stored in HDFS, and queries can be executed directly on the data through Hive.

### Phoenix
- Use Phoenix to execute SQL queries on HBase, simplifying data access and report analysis.

### Web Interface
- Start the Spring Boot application and access the web interface, where users can query and display data from HBase, Hive, and Phoenix.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to Apache Hadoop, HBase, Hive, and Phoenix for the core technologies.
- Thanks to Spring Boot and JSP for providing web development support.
- Thanks to VMware for providing the virtual machine environment.
