<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>热门App流量趋势图</title>
    <style>
        .chart-container {
            text-align: center;
        }
        .chart-title {
            font-size: 24px;
            margin-bottom: 10px;
        }
        .unit-label {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .legend-container {
            margin-top: 20px;
        }
        .legend-item {
            display: inline-block;
            margin-right: 10px;
        }
        .legend-color {
            display: inline-block;
            width: 10px;
            height: 10px;
            border-radius: 50%;
            margin-right: 5px;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/echarts@5.4.0/dist/echarts.min.js"></script>
</head>
<body>
<div class="chart-container">
    <div class="chart-title">热门App流量趋势图</div>
    <div class="unit-label">单位(GB)</div>
    <div class="legend-container">
        <!-- 手动创建图例 -->
        <div class="legend-item" onclick="toggleSeries('手机网速检测')">
            <span class="legend-color" style="background-color: blue;"></span>
            手机网速检测
        </div>
        <div class="legend-item" onclick="toggleSeries('PPTV聚力')">
            <span class="legend-color" style="background-color: green;"></span>
            PPTV聚力
        </div>
        <div class="legend-item" onclick="toggleSeries('腾讯视频')">
            <span class="legend-color" style="background-color: orange;"></span>
            腾讯视频
        </div>
        <div class="legend-item" onclick="toggleSeries('优酷视频')">
            <span class="legend-color" style="background-color: red;"></span>
            优酷视频
        </div>
        <div class="legend-item" onclick="toggleSeries('看片神器')">
            <span class="legend-color" style="background-color: lightblue;"></span>
            看片神器
        </div>
    </div>
    <div id="chartContainer" style="width: 100%;height: 600px;"></div>
</div>
<script type="text/javascript">
    // 准备数据
    var appTrafficTrendData = [];
    <c:forEach items="${appTrafficTrendData}" var="data">
    appTrafficTrendData.push({
        timeGroup: '${data.timeGroup}',
        phoneSpeedTestTraffic: ${data.phoneSpeedTestTraffic.doubleValue() / (1024*1024)}, // 将B转换为GB
        pptvTraffic: ${data.pptvTraffic.doubleValue() / ( 1024*1024)},
        tencentVideoTraffic: ${data.tencentVideoTraffic.doubleValue() / (1024*1024)},
        youkuTraffic: ${data.youkuTraffic.doubleValue() / ( 1024*1024)},
        videoToolTraffic: ${data.videoToolTraffic.doubleValue() / (1024*1024)}
    });
    </c:forEach>
    console.log(appTrafficTrendData)
    // 初始化 ECharts 实例
    var chartDom = document.getElementById('chartContainer');
    var myChart = echarts.init(chartDom);

    // 提取 x 轴数据（时间分组）
    var xAxisData = appTrafficTrendData.map(function (item) {
        return item.timeGroup;
    });

    // 提取各 App 的流量数据（已转换为GB）
    var phoneSpeedTestTrafficData = appTrafficTrendData.map(function (item) {
        return item.phoneSpeedTestTraffic;
    });
    var pptvTrafficData = appTrafficTrendData.map(function (item) {
        return item.pptvTraffic;
    });
    var tencentVideoTrafficData = appTrafficTrendData.map(function (item) {
        return item.tencentVideoTraffic;
    });
    var youkuTrafficData = appTrafficTrendData.map(function (item) {
        return item.youkuTraffic;
    });
    var videoToolTrafficData = appTrafficTrendData.map(function (item) {
        return item.videoToolTraffic;
    });

    // 配置项
    var option = {
        title: {
            text: '', // 标题文本移到HTML中显示
            left: 'center'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['手机网速检测', 'PPTV聚力', '腾讯视频', '优酷视频', '看片神器'],
            left: 'right'
        },
        xAxis: {
            type: 'category',
            data: xAxisData,
            boundaryGap: false
        },
        yAxis: {
            type: 'value',
            name: '' // 单位文本移到HTML中显示
        },
        series: [
            {
                name: '手机网速检测',
                type: 'line',
                data: phoneSpeedTestTrafficData,
                smooth: true,
                areaStyle: {}
            },
            {
                name: 'PPTV聚力',
                type: 'line',
                data: pptvTrafficData,
                smooth: true,
                areaStyle: {}
            },
            {
                name: '腾讯视频',
                type: 'line',
                data: tencentVideoTrafficData,
                smooth: true,
                areaStyle: {}
            },
            {
                name: '优酷视频',
                type: 'line',
                data: youkuTrafficData,
                smooth: true,
                areaStyle: {}
            },
            {
                name: '看片神器',
                type: 'line',
                data: videoToolTrafficData,
                smooth: true,
                areaStyle: {}
            }
        ]
    };

    // 使用配置项显示图表
    myChart.setOption(option);

    // 点击图例切换系列显示状态的函数
    function toggleSeries(seriesName) {
        var series = myChart.getOption().series;
        for (var i = 0; i < series.length; i++) {
            if (series[i].name === seriesName) {
                series[i].show =!series[i].show;
            }
        }
        myChart.setOption({
            series: series
        });
    }
</script>
</body>
</html>