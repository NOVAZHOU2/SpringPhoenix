<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Landmark热门App流量排名</title>
    <style>
        .chart-wrapper {
                     width: 100%;
                     height: 380px;
                     padding: 20px;
                     text-align: center;
                 }
        .unit-label {
                    font-size: 16px;
                    margin-bottom: 20px;
                }
        .chart-title {
                     text-align: center;
                     font-size: 28px;
                     margin-bottom: 10px;
                     margin-top: 20px;/*添加顶部外边距，可根据需求调整值*/
                 }
    </style>
    <!-- 引入 Echarts 库 -->
    <script src="https://cdn.jsdelivr.net/npm/echarts@5"></script>
</head>
<body>
<div class="chart-wrapper">
    <div class="chart-title">Landmark热门App流量排名</div>
    <div class="unit-label">单位(GB)  默认住宅区</div>
    <div id="main" style="width: 100%;height: 380px;"></div>
</div>
<script>
    var barChartDom = document.getElementById('main');
    var barMyChart = echarts.init(barChartDom);
    var barOption;

    var barData = [];
    var barIndex = 0;
    <c:forEach items="${appTrafficLandData}" var="appTraffic">
    barData[barIndex++] = {
        appName: '${appTraffic.appName}',
        type: '${appTraffic.type}',
        traffic: ${appTraffic.traffic}
    };
    </c:forEach>
    console.log('barData:', barData);

    // 处理柱状图数据
    var xAxisData = [];
    var seriesData = {};
    var legendData = [];

    // 生成随机颜色的函数
    function getRandomColor() {
        var letters = '0123456789ABCDEF';
        var color = '#';
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }

    // 定义类型顺序
    var typeOrder = ['2G', '3G', '4G'];

    barData.forEach(function (item) {
        if (!xAxisData.includes(item.appName)) {
            xAxisData.push(item.appName);
            console.log('itemAppName', item.appName);
        }
        if (!seriesData[item.type]) {
            seriesData[item.type] = {
                name: item.type,
                appName: item.appName,
                type: 'bar',
                data: {},
                itemStyle: {
                    color: getRandomColor()
                }
            };
            legendData.push(item.type);
        }
        seriesData[item.type].data[item.appName] = item.traffic / (1024 * 1024);
    });

    // 计算每个应用的总流量以及所有应用的总流量（用于'all'柱状图）
    var appTotalTraffic = {};
    var allTotalTraffic = 0;
    xAxisData.forEach(function (appName) {
        appTotalTraffic[appName] = 0;
        typeOrder.forEach(function (type) {
            if (seriesData[type] && seriesData[type].data[appName]) {
                appTotalTraffic[appName] += seriesData[type].data[appName];
                allTotalTraffic += seriesData[type].data[appName];
            }
        });
    });

    // 根据总流量对 xAxisData 进行降序排序
    xAxisData.sort((a, b) => appTotalTraffic[b] - appTotalTraffic[a]);

    // 添加'all'数据到 seriesData 和 legendData
    seriesData['all'] = {
        name: 'all',
        type: 'bar',
        data: [],
        itemStyle: {
            color: getRandomColor() // 为'all'柱状图设置一个不同的颜色
        }
    };
    legendData.push('all');

    // 填充'all'柱状图的数据
    xAxisData.forEach(function (appName) {
        seriesData['all'].data.push(appTotalTraffic[appName]);
    });

    // 按照指定顺序重新排列seriesData
    var sortedSeriesData = [];
    typeOrder.forEach(function (type) {
        if (seriesData[type]) {
            var dataArray = [];
            xAxisData.forEach(function (appName) {
                dataArray.push(seriesData[type].data[appName] || 0);
            });
            seriesData[type].data = dataArray;
            sortedSeriesData.push(seriesData[type]);
        }
    });
    sortedSeriesData.push(seriesData['all']); // 将'all'柱状图数据添加到最后

    // 按照指定顺序重新排列legendData
    var sortedLegendData = [];
    typeOrder.forEach(function (type) {
        if (legendData.includes(type)) {
            sortedLegendData.push(type);
        }
    });
    sortedLegendData.push('all');

    console.log(sortedSeriesData);
    console.log(typeOrder);
    barOption = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type:'shadow'
            }
        },
        legend: {
            show: true,
            left: 'center',
            top: 10,
            backgroundColor: 'rgba(255, 255, 255, 0.8)',
            borderColor: '#ccc',
            borderWidth: 1,
            textStyle: {
                color: '#333',
                fontSize: 14,
                fontFamily:'sans - serif'
            }
        },
        xAxis: {
            type: 'category',
            data: xAxisData,
            axisTick: {
                alignWithLabel: true
            }
        },
        yAxis: {
            type: 'value'
        },
        series: sortedSeriesData
    };

    barMyChart.setOption(barOption);
</script>
</body>
</html>