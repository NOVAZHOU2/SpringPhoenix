# 基于Hadoop集群的SpringPhoenix大数据项目

本项目在Linux虚拟机上配置了Hadoop集群，并使用HBase、Hive、Phoenix等技术，结合Spring Boot和JSP技术栈实现了多个功能。旨在探索和利用这些技术进行大数据处理、实时查询以及基于Web的界面展示。

## 功能特点

1. **HBase 集成**  
   配置并使用HBase进行分布式、可扩展的存储，支持大数据集的实时读写操作。

2. **Hive 数据仓库**  
   实现了Hive数据仓库功能，允许对Hadoop上的数据执行SQL-like查询，简化数据分析，并与其他大数据工具集成。

3. **Phoenix 提供SQL层支持**  
   使用Phoenix为HBase提供SQL查询接口，简化了对HBase的查询操作，支持实时分析和高性能数据处理。

4. **Web界面展示**  
   使用Spring Boot和JSP技术栈构建了一个Web应用，通过网页展示HBase、Hive和Phoenix的查询结果和数据统计信息，提升了系统的可用性和交互性。

5. **热门APP流量排名**  
   - **功能描述**：以柱状图和饼状图的形式展现热门APP的流量排名。
   - **查询条件**：APP流量、运营商、日期（范围）
   - **功能要求**：  
     - 若用户是管理员，则查询所有运营商（CMCC、CUCC、CTCC）的数据。  
     - 若用户不是管理员，则只查询特定用户类型的数据。
   
6. **热门APP流量跟踪**  
   - **功能描述**：以曲线图的形式展示各个热门APP在不同时间粒度（如月、天、时）上的流量情况。
   - **查询条件**：运营商、网络制式、APP流量、热门APP、时间粒度、日期（范围）
   - **功能要求**：  
     - 若用户是管理员，则查询所有运营商的数据。  
     - 若用户不是管理员，则只查询特定用户类型的数据。

7. **典型地标热门APP流量排名**  
   - **功能描述**：以柱状图的形式展示各个热门APP的流量使用情况，并按照流量大小进行降序排序。
   - **查询条件**：APP流量、运营商、网络制式、典型地标、日期（范围）
   - **功能要求**：  
     - 若用户是管理员，则查询所有运营商的数据。  
     - 若用户不是管理员，则只查询特定用户类型的数据。

## 环境要求

- **Hadoop**：Hadoop 3.x 或更高版本。
- **HBase**：HBase 2.x 或更高版本。
- **Hive**：Apache Hive 3.x 或更高版本。
- **Phoenix**：Apache Phoenix 5.x 或更高版本。
- **Spring Boot**：Spring Boot 2.x 或更高版本。
- **JSP**：JavaServer Pages (JSP) 技术栈。
- **Linux 虚拟机**：用于配置Hadoop集群的Linux虚拟机。
- **Java**：Java 8 或更高版本。

## 安装与配置

### 1. 配置 Hadoop 集群
- 按照官方Hadoop文档安装和配置Hadoop。
- 确保Hadoop的各个守护进程（HDFS、YARN等）正常运行，并且配置正确。

### 2. 安装和配置 HBase
- 按照官方HBase文档安装和配置HBase。
- 配置HBase与Hadoop集群的连接，支持分布式存储。

### 3. 安装和配置 Hive
- 安装Hive，并配置其与Hadoop集群的连接，提供数据仓库功能。
- 配置Metastore，并设置存储目录。

### 4. 安装和配置 Phoenix
- 安装Phoenix，以便在HBase上提供SQL查询接口。
- 配置Phoenix与HBase的连接，支持高效查询。

### 5. 配置Spring Boot和JSP
- 使用Spring Boot框架构建Web应用，处理前端与后端交互。
- 使用JSP技术栈提供动态网页展示功能，展示HBase、Hive和Phoenix的查询结果。

## 使用方法

### HBase
- 使用HBase进行实时的数据读写操作。
- 可以通过HBase Shell或API与存储在HBase中的数据进行交互。

### Hive
- 使用HiveQL对Hadoop集群中的数据进行SQL查询。
- 数据存储在HDFS中，可以通过Hive直接运行查询。

### Phoenix
- 使用Phoenix在HBase上执行SQL查询，简化数据访问和报告分析。

### Web界面
- 启动Spring Boot应用并访问提供的Web界面，用户可以通过界面查询和展示HBase、Hive和Phoenix的数据。

## 许可证

本项目采用MIT许可证 - 详见 [LICENSE](LICENSE) 文件。

## 致谢

- 感谢Apache Hadoop、HBase、Hive和Phoenix等核心技术的支持。
- 感谢Spring Boot和JSP技术栈提供Web开发支持。
- 感谢VMware提供虚拟机环境。
