package tech.rabbit.r1launcher.rabbit.event_handler.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchWeather.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u001bB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J7\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u001c"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;", "", "location", "", "weekName", "weather", "hourlyTemperature", "", "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo$HourlyTemperature;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getHourlyTemperature", "()Ljava/util/List;", "getLocation", "()Ljava/lang/String;", "getWeather", "getWeekName", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "HourlyTemperature", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SearchWeatherInfo {
    public static final int $stable = 8;
    private final List<HourlyTemperature> hourlyTemperature;
    private final String location;
    private final String weather;
    private final String weekName;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchWeatherInfo copy$default(SearchWeatherInfo searchWeatherInfo, String str, String str2, String str3, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = searchWeatherInfo.location;
        }
        if ((i & 2) != 0) {
            str2 = searchWeatherInfo.weekName;
        }
        if ((i & 4) != 0) {
            str3 = searchWeatherInfo.weather;
        }
        if ((i & 8) != 0) {
            list = searchWeatherInfo.hourlyTemperature;
        }
        return searchWeatherInfo.copy(str, str2, str3, list);
    }

    /* renamed from: component1, reason: from getter */
    public final String getLocation() {
        return this.location;
    }

    /* renamed from: component2, reason: from getter */
    public final String getWeekName() {
        return this.weekName;
    }

    /* renamed from: component3, reason: from getter */
    public final String getWeather() {
        return this.weather;
    }

    public final List<HourlyTemperature> component4() {
        return this.hourlyTemperature;
    }

    public final SearchWeatherInfo copy(String location, String weekName, String weather, List<HourlyTemperature> hourlyTemperature) {
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(weekName, "weekName");
        Intrinsics.checkNotNullParameter(weather, "weather");
        Intrinsics.checkNotNullParameter(hourlyTemperature, "hourlyTemperature");
        return new SearchWeatherInfo(location, weekName, weather, hourlyTemperature);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchWeatherInfo)) {
            return false;
        }
        SearchWeatherInfo searchWeatherInfo = (SearchWeatherInfo) other;
        return Intrinsics.areEqual(this.location, searchWeatherInfo.location) && Intrinsics.areEqual(this.weekName, searchWeatherInfo.weekName) && Intrinsics.areEqual(this.weather, searchWeatherInfo.weather) && Intrinsics.areEqual(this.hourlyTemperature, searchWeatherInfo.hourlyTemperature);
    }

    public final List<HourlyTemperature> getHourlyTemperature() {
        return this.hourlyTemperature;
    }

    public final String getLocation() {
        return this.location;
    }

    public final String getWeather() {
        return this.weather;
    }

    public final String getWeekName() {
        return this.weekName;
    }

    public int hashCode() {
        return (((((this.location.hashCode() * 31) + this.weekName.hashCode()) * 31) + this.weather.hashCode()) * 31) + this.hourlyTemperature.hashCode();
    }

    public String toString() {
        return "SearchWeatherInfo(location=" + this.location + ", weekName=" + this.weekName + ", weather=" + this.weather + ", hourlyTemperature=" + this.hourlyTemperature + ')';
    }

    public SearchWeatherInfo(String location, String weekName, String weather, List<HourlyTemperature> hourlyTemperature) {
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(weekName, "weekName");
        Intrinsics.checkNotNullParameter(weather, "weather");
        Intrinsics.checkNotNullParameter(hourlyTemperature, "hourlyTemperature");
        this.location = location;
        this.weekName = weekName;
        this.weather = weather;
        this.hourlyTemperature = hourlyTemperature;
    }

    /* compiled from: SearchWeather.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003JE\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001e"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo$HourlyTemperature;", "", "time", "", "hour", "temperature", "temperatureUnit", "weatherIconUrl", "precipitationProbability", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getHour", "()Ljava/lang/String;", "getPrecipitationProbability", "getTemperature", "getTemperatureUnit", "getTime", "getWeatherIconUrl", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class HourlyTemperature {
        public static final int $stable = 0;
        private final String hour;
        private final String precipitationProbability;
        private final String temperature;
        private final String temperatureUnit;
        private final String time;
        private final String weatherIconUrl;

        public static /* synthetic */ HourlyTemperature copy$default(HourlyTemperature hourlyTemperature, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
            if ((i & 1) != 0) {
                str = hourlyTemperature.time;
            }
            if ((i & 2) != 0) {
                str2 = hourlyTemperature.hour;
            }
            String str7 = str2;
            if ((i & 4) != 0) {
                str3 = hourlyTemperature.temperature;
            }
            String str8 = str3;
            if ((i & 8) != 0) {
                str4 = hourlyTemperature.temperatureUnit;
            }
            String str9 = str4;
            if ((i & 16) != 0) {
                str5 = hourlyTemperature.weatherIconUrl;
            }
            String str10 = str5;
            if ((i & 32) != 0) {
                str6 = hourlyTemperature.precipitationProbability;
            }
            return hourlyTemperature.copy(str, str7, str8, str9, str10, str6);
        }

        /* renamed from: component1, reason: from getter */
        public final String getTime() {
            return this.time;
        }

        /* renamed from: component2, reason: from getter */
        public final String getHour() {
            return this.hour;
        }

        /* renamed from: component3, reason: from getter */
        public final String getTemperature() {
            return this.temperature;
        }

        /* renamed from: component4, reason: from getter */
        public final String getTemperatureUnit() {
            return this.temperatureUnit;
        }

        /* renamed from: component5, reason: from getter */
        public final String getWeatherIconUrl() {
            return this.weatherIconUrl;
        }

        /* renamed from: component6, reason: from getter */
        public final String getPrecipitationProbability() {
            return this.precipitationProbability;
        }

        public final HourlyTemperature copy(String time, String hour, String temperature, String temperatureUnit, String weatherIconUrl, String precipitationProbability) {
            Intrinsics.checkNotNullParameter(time, "time");
            Intrinsics.checkNotNullParameter(hour, "hour");
            Intrinsics.checkNotNullParameter(temperature, "temperature");
            Intrinsics.checkNotNullParameter(temperatureUnit, "temperatureUnit");
            Intrinsics.checkNotNullParameter(weatherIconUrl, "weatherIconUrl");
            Intrinsics.checkNotNullParameter(precipitationProbability, "precipitationProbability");
            return new HourlyTemperature(time, hour, temperature, temperatureUnit, weatherIconUrl, precipitationProbability);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof HourlyTemperature)) {
                return false;
            }
            HourlyTemperature hourlyTemperature = (HourlyTemperature) other;
            return Intrinsics.areEqual(this.time, hourlyTemperature.time) && Intrinsics.areEqual(this.hour, hourlyTemperature.hour) && Intrinsics.areEqual(this.temperature, hourlyTemperature.temperature) && Intrinsics.areEqual(this.temperatureUnit, hourlyTemperature.temperatureUnit) && Intrinsics.areEqual(this.weatherIconUrl, hourlyTemperature.weatherIconUrl) && Intrinsics.areEqual(this.precipitationProbability, hourlyTemperature.precipitationProbability);
        }

        public final String getHour() {
            return this.hour;
        }

        public final String getPrecipitationProbability() {
            return this.precipitationProbability;
        }

        public final String getTemperature() {
            return this.temperature;
        }

        public final String getTemperatureUnit() {
            return this.temperatureUnit;
        }

        public final String getTime() {
            return this.time;
        }

        public final String getWeatherIconUrl() {
            return this.weatherIconUrl;
        }

        public int hashCode() {
            return (((((((((this.time.hashCode() * 31) + this.hour.hashCode()) * 31) + this.temperature.hashCode()) * 31) + this.temperatureUnit.hashCode()) * 31) + this.weatherIconUrl.hashCode()) * 31) + this.precipitationProbability.hashCode();
        }

        public String toString() {
            return "HourlyTemperature(time=" + this.time + ", hour=" + this.hour + ", temperature=" + this.temperature + ", temperatureUnit=" + this.temperatureUnit + ", weatherIconUrl=" + this.weatherIconUrl + ", precipitationProbability=" + this.precipitationProbability + ')';
        }

        public HourlyTemperature(String time, String hour, String temperature, String temperatureUnit, String weatherIconUrl, String precipitationProbability) {
            Intrinsics.checkNotNullParameter(time, "time");
            Intrinsics.checkNotNullParameter(hour, "hour");
            Intrinsics.checkNotNullParameter(temperature, "temperature");
            Intrinsics.checkNotNullParameter(temperatureUnit, "temperatureUnit");
            Intrinsics.checkNotNullParameter(weatherIconUrl, "weatherIconUrl");
            Intrinsics.checkNotNullParameter(precipitationProbability, "precipitationProbability");
            this.time = time;
            this.hour = hour;
            this.temperature = temperature;
            this.temperatureUnit = temperatureUnit;
            this.weatherIconUrl = weatherIconUrl;
            this.precipitationProbability = precipitationProbability;
        }
    }
}
