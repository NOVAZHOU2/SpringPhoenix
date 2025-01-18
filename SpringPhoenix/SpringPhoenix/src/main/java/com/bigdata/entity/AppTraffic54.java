package com.bigdata.entity;

import java.math.BigDecimal;

public class AppTraffic54 {
    private String timeGroup;
    private BigDecimal phoneSpeedTestTraffic;
    private BigDecimal pptvTraffic;
    private BigDecimal tencentVideoTraffic;
    private BigDecimal youkuTraffic;
    private BigDecimal videoToolTraffic;

    public String getTimeGroup() {
        return timeGroup;
    }

    public void setTimeGroup(String timeGroup) {
        this.timeGroup = timeGroup;
    }

    public BigDecimal getPhoneSpeedTestTraffic() {
        return phoneSpeedTestTraffic;
    }

    public void setPhoneSpeedTestTraffic(BigDecimal phoneSpeedTestTraffic) {
        this.phoneSpeedTestTraffic = phoneSpeedTestTraffic;
    }

    public BigDecimal getPptvTraffic() {
        return pptvTraffic;
    }

    public void setPptvTraffic(BigDecimal pptvTraffic) {
        this.pptvTraffic = pptvTraffic;
    }

    public BigDecimal getTencentVideoTraffic() {
        return tencentVideoTraffic;
    }

    public void setTencentVideoTraffic(BigDecimal tencentVideoTraffic) {
        this.tencentVideoTraffic = tencentVideoTraffic;
    }

    public BigDecimal getYoukuTraffic() {
        return youkuTraffic;
    }

    public void setYoukuTraffic(BigDecimal youkuTraffic) {
        this.youkuTraffic = youkuTraffic;
    }

    public BigDecimal getVideoToolTraffic() {
        return videoToolTraffic;
    }

    public void setVideoToolTraffic(BigDecimal videoToolTraffic) {
        this.videoToolTraffic = videoToolTraffic;
    }

    @Override
    public String toString() {
        return "AppTrafficTrendEntity{" +
                "timeGroup='" + timeGroup + '\'' +
                ", phoneSpeedTestTraffic=" + phoneSpeedTestTraffic +
                ", pptvTraffic=" + pptvTraffic +
                ", tencentVideoTraffic=" + tencentVideoTraffic +
                ", youkuTraffic=" + youkuTraffic +
                ", videoToolTraffic=" + videoToolTraffic +
                '}';
    }
}