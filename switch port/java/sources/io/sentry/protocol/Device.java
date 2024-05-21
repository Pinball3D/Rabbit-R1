package io.sentry.protocol;

import com.alibaba.fastjson.parser.JSONLexer;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class Device implements JsonUnknown, JsonSerializable {
    public static final String TYPE = "device";
    private String[] archs;
    private Float batteryLevel;
    private Float batteryTemperature;
    private Date bootTime;
    private String brand;
    private Boolean charging;
    private String connectionType;
    private String cpuDescription;
    private Long externalFreeStorage;
    private Long externalStorageSize;
    private String family;
    private Long freeMemory;
    private Long freeStorage;
    private String id;

    @Deprecated
    private String language;
    private String locale;
    private Boolean lowMemory;
    private String manufacturer;
    private Long memorySize;
    private String model;
    private String modelId;
    private String name;
    private Boolean online;
    private DeviceOrientation orientation;
    private Integer processorCount;
    private Double processorFrequency;
    private Float screenDensity;
    private Integer screenDpi;
    private Integer screenHeightPixels;
    private Integer screenWidthPixels;
    private Boolean simulator;
    private Long storageSize;
    private TimeZone timezone;
    private Map<String, Object> unknown;
    private Long usableMemory;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String ARCHS = "archs";
        public static final String BATTERY_LEVEL = "battery_level";
        public static final String BATTERY_TEMPERATURE = "battery_temperature";
        public static final String BOOT_TIME = "boot_time";
        public static final String BRAND = "brand";
        public static final String CHARGING = "charging";
        public static final String CONNECTION_TYPE = "connection_type";
        public static final String CPU_DESCRIPTION = "cpu_description";
        public static final String EXTERNAL_FREE_STORAGE = "external_free_storage";
        public static final String EXTERNAL_STORAGE_SIZE = "external_storage_size";
        public static final String FAMILY = "family";
        public static final String FREE_MEMORY = "free_memory";
        public static final String FREE_STORAGE = "free_storage";
        public static final String ID = "id";
        public static final String LANGUAGE = "language";
        public static final String LOCALE = "locale";
        public static final String LOW_MEMORY = "low_memory";
        public static final String MANUFACTURER = "manufacturer";
        public static final String MEMORY_SIZE = "memory_size";
        public static final String MODEL = "model";
        public static final String MODEL_ID = "model_id";
        public static final String NAME = "name";
        public static final String ONLINE = "online";
        public static final String ORIENTATION = "orientation";
        public static final String PROCESSOR_COUNT = "processor_count";
        public static final String PROCESSOR_FREQUENCY = "processor_frequency";
        public static final String SCREEN_DENSITY = "screen_density";
        public static final String SCREEN_DPI = "screen_dpi";
        public static final String SCREEN_HEIGHT_PIXELS = "screen_height_pixels";
        public static final String SCREEN_WIDTH_PIXELS = "screen_width_pixels";
        public static final String SIMULATOR = "simulator";
        public static final String STORAGE_SIZE = "storage_size";
        public static final String TIMEZONE = "timezone";
        public static final String USABLE_MEMORY = "usable_memory";
    }

    public String[] getArchs() {
        return this.archs;
    }

    public Float getBatteryLevel() {
        return this.batteryLevel;
    }

    public Float getBatteryTemperature() {
        return this.batteryTemperature;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getConnectionType() {
        return this.connectionType;
    }

    public String getCpuDescription() {
        return this.cpuDescription;
    }

    public Long getExternalFreeStorage() {
        return this.externalFreeStorage;
    }

    public Long getExternalStorageSize() {
        return this.externalStorageSize;
    }

    public String getFamily() {
        return this.family;
    }

    public Long getFreeMemory() {
        return this.freeMemory;
    }

    public Long getFreeStorage() {
        return this.freeStorage;
    }

    public String getId() {
        return this.id;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getLocale() {
        return this.locale;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public Long getMemorySize() {
        return this.memorySize;
    }

    public String getModel() {
        return this.model;
    }

    public String getModelId() {
        return this.modelId;
    }

    public String getName() {
        return this.name;
    }

    public DeviceOrientation getOrientation() {
        return this.orientation;
    }

    public Integer getProcessorCount() {
        return this.processorCount;
    }

    public Double getProcessorFrequency() {
        return this.processorFrequency;
    }

    public Float getScreenDensity() {
        return this.screenDensity;
    }

    public Integer getScreenDpi() {
        return this.screenDpi;
    }

    public Integer getScreenHeightPixels() {
        return this.screenHeightPixels;
    }

    public Integer getScreenWidthPixels() {
        return this.screenWidthPixels;
    }

    public Long getStorageSize() {
        return this.storageSize;
    }

    public TimeZone getTimezone() {
        return this.timezone;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public Long getUsableMemory() {
        return this.usableMemory;
    }

    public Boolean isCharging() {
        return this.charging;
    }

    public Boolean isLowMemory() {
        return this.lowMemory;
    }

    public Boolean isOnline() {
        return this.online;
    }

    public Boolean isSimulator() {
        return this.simulator;
    }

    public void setArchs(String[] strArr) {
        this.archs = strArr;
    }

    public void setBatteryLevel(Float f) {
        this.batteryLevel = f;
    }

    public void setBatteryTemperature(Float f) {
        this.batteryTemperature = f;
    }

    public void setBootTime(Date date) {
        this.bootTime = date;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setCharging(Boolean bool) {
        this.charging = bool;
    }

    public void setConnectionType(String str) {
        this.connectionType = str;
    }

    public void setCpuDescription(String str) {
        this.cpuDescription = str;
    }

    public void setExternalFreeStorage(Long l) {
        this.externalFreeStorage = l;
    }

    public void setExternalStorageSize(Long l) {
        this.externalStorageSize = l;
    }

    public void setFamily(String str) {
        this.family = str;
    }

    public void setFreeMemory(Long l) {
        this.freeMemory = l;
    }

    public void setFreeStorage(Long l) {
        this.freeStorage = l;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setLocale(String str) {
        this.locale = str;
    }

    public void setLowMemory(Boolean bool) {
        this.lowMemory = bool;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setMemorySize(Long l) {
        this.memorySize = l;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setModelId(String str) {
        this.modelId = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOnline(Boolean bool) {
        this.online = bool;
    }

    public void setOrientation(DeviceOrientation deviceOrientation) {
        this.orientation = deviceOrientation;
    }

    public void setProcessorCount(Integer num) {
        this.processorCount = num;
    }

    public void setProcessorFrequency(Double d) {
        this.processorFrequency = d;
    }

    public void setScreenDensity(Float f) {
        this.screenDensity = f;
    }

    public void setScreenDpi(Integer num) {
        this.screenDpi = num;
    }

    public void setScreenHeightPixels(Integer num) {
        this.screenHeightPixels = num;
    }

    public void setScreenWidthPixels(Integer num) {
        this.screenWidthPixels = num;
    }

    public void setSimulator(Boolean bool) {
        this.simulator = bool;
    }

    public void setStorageSize(Long l) {
        this.storageSize = l;
    }

    public void setTimezone(TimeZone timeZone) {
        this.timezone = timeZone;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setUsableMemory(Long l) {
        this.usableMemory = l;
    }

    public Device() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Device(Device device) {
        this.name = device.name;
        this.manufacturer = device.manufacturer;
        this.brand = device.brand;
        this.family = device.family;
        this.model = device.model;
        this.modelId = device.modelId;
        this.charging = device.charging;
        this.online = device.online;
        this.orientation = device.orientation;
        this.simulator = device.simulator;
        this.memorySize = device.memorySize;
        this.freeMemory = device.freeMemory;
        this.usableMemory = device.usableMemory;
        this.lowMemory = device.lowMemory;
        this.storageSize = device.storageSize;
        this.freeStorage = device.freeStorage;
        this.externalStorageSize = device.externalStorageSize;
        this.externalFreeStorage = device.externalFreeStorage;
        this.screenWidthPixels = device.screenWidthPixels;
        this.screenHeightPixels = device.screenHeightPixels;
        this.screenDensity = device.screenDensity;
        this.screenDpi = device.screenDpi;
        this.bootTime = device.bootTime;
        this.id = device.id;
        this.language = device.language;
        this.connectionType = device.connectionType;
        this.batteryTemperature = device.batteryTemperature;
        this.batteryLevel = device.batteryLevel;
        String[] strArr = device.archs;
        this.archs = strArr != null ? (String[]) strArr.clone() : null;
        this.locale = device.locale;
        TimeZone timeZone = device.timezone;
        this.timezone = timeZone != null ? (TimeZone) timeZone.clone() : null;
        this.processorCount = device.processorCount;
        this.processorFrequency = device.processorFrequency;
        this.cpuDescription = device.cpuDescription;
        this.unknown = CollectionUtils.newConcurrentHashMap(device.unknown);
    }

    public Date getBootTime() {
        Date date = this.bootTime;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Device device = (Device) obj;
        return Objects.equals(this.name, device.name) && Objects.equals(this.manufacturer, device.manufacturer) && Objects.equals(this.brand, device.brand) && Objects.equals(this.family, device.family) && Objects.equals(this.model, device.model) && Objects.equals(this.modelId, device.modelId) && Arrays.equals(this.archs, device.archs) && Objects.equals(this.batteryLevel, device.batteryLevel) && Objects.equals(this.charging, device.charging) && Objects.equals(this.online, device.online) && this.orientation == device.orientation && Objects.equals(this.simulator, device.simulator) && Objects.equals(this.memorySize, device.memorySize) && Objects.equals(this.freeMemory, device.freeMemory) && Objects.equals(this.usableMemory, device.usableMemory) && Objects.equals(this.lowMemory, device.lowMemory) && Objects.equals(this.storageSize, device.storageSize) && Objects.equals(this.freeStorage, device.freeStorage) && Objects.equals(this.externalStorageSize, device.externalStorageSize) && Objects.equals(this.externalFreeStorage, device.externalFreeStorage) && Objects.equals(this.screenWidthPixels, device.screenWidthPixels) && Objects.equals(this.screenHeightPixels, device.screenHeightPixels) && Objects.equals(this.screenDensity, device.screenDensity) && Objects.equals(this.screenDpi, device.screenDpi) && Objects.equals(this.bootTime, device.bootTime) && Objects.equals(this.id, device.id) && Objects.equals(this.language, device.language) && Objects.equals(this.locale, device.locale) && Objects.equals(this.connectionType, device.connectionType) && Objects.equals(this.batteryTemperature, device.batteryTemperature) && Objects.equals(this.processorCount, device.processorCount) && Objects.equals(this.processorFrequency, device.processorFrequency) && Objects.equals(this.cpuDescription, device.cpuDescription);
    }

    public int hashCode() {
        return (Objects.hash(this.name, this.manufacturer, this.brand, this.family, this.model, this.modelId, this.batteryLevel, this.charging, this.online, this.orientation, this.simulator, this.memorySize, this.freeMemory, this.usableMemory, this.lowMemory, this.storageSize, this.freeStorage, this.externalStorageSize, this.externalFreeStorage, this.screenWidthPixels, this.screenHeightPixels, this.screenDensity, this.screenDpi, this.bootTime, this.timezone, this.id, this.language, this.locale, this.connectionType, this.batteryTemperature, this.processorCount, this.processorFrequency, this.cpuDescription) * 31) + Arrays.hashCode(this.archs);
    }

    /* loaded from: classes3.dex */
    public enum DeviceOrientation implements JsonSerializable {
        PORTRAIT,
        LANDSCAPE;

        @Override // io.sentry.JsonSerializable
        public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
            objectWriter.value(toString().toLowerCase(Locale.ROOT));
        }

        /* loaded from: classes3.dex */
        public static final class Deserializer implements JsonDeserializer<DeviceOrientation> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.sentry.JsonDeserializer
            public DeviceOrientation deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
                return DeviceOrientation.valueOf(jsonObjectReader.nextString().toUpperCase(Locale.ROOT));
            }
        }
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.name != null) {
            objectWriter.name("name").value(this.name);
        }
        if (this.manufacturer != null) {
            objectWriter.name(JsonKeys.MANUFACTURER).value(this.manufacturer);
        }
        if (this.brand != null) {
            objectWriter.name(JsonKeys.BRAND).value(this.brand);
        }
        if (this.family != null) {
            objectWriter.name(JsonKeys.FAMILY).value(this.family);
        }
        if (this.model != null) {
            objectWriter.name(JsonKeys.MODEL).value(this.model);
        }
        if (this.modelId != null) {
            objectWriter.name(JsonKeys.MODEL_ID).value(this.modelId);
        }
        if (this.archs != null) {
            objectWriter.name(JsonKeys.ARCHS).value(iLogger, this.archs);
        }
        if (this.batteryLevel != null) {
            objectWriter.name(JsonKeys.BATTERY_LEVEL).value(this.batteryLevel);
        }
        if (this.charging != null) {
            objectWriter.name(JsonKeys.CHARGING).value(this.charging);
        }
        if (this.online != null) {
            objectWriter.name(JsonKeys.ONLINE).value(this.online);
        }
        if (this.orientation != null) {
            objectWriter.name(JsonKeys.ORIENTATION).value(iLogger, this.orientation);
        }
        if (this.simulator != null) {
            objectWriter.name(JsonKeys.SIMULATOR).value(this.simulator);
        }
        if (this.memorySize != null) {
            objectWriter.name("memory_size").value(this.memorySize);
        }
        if (this.freeMemory != null) {
            objectWriter.name(JsonKeys.FREE_MEMORY).value(this.freeMemory);
        }
        if (this.usableMemory != null) {
            objectWriter.name(JsonKeys.USABLE_MEMORY).value(this.usableMemory);
        }
        if (this.lowMemory != null) {
            objectWriter.name(JsonKeys.LOW_MEMORY).value(this.lowMemory);
        }
        if (this.storageSize != null) {
            objectWriter.name(JsonKeys.STORAGE_SIZE).value(this.storageSize);
        }
        if (this.freeStorage != null) {
            objectWriter.name(JsonKeys.FREE_STORAGE).value(this.freeStorage);
        }
        if (this.externalStorageSize != null) {
            objectWriter.name(JsonKeys.EXTERNAL_STORAGE_SIZE).value(this.externalStorageSize);
        }
        if (this.externalFreeStorage != null) {
            objectWriter.name(JsonKeys.EXTERNAL_FREE_STORAGE).value(this.externalFreeStorage);
        }
        if (this.screenWidthPixels != null) {
            objectWriter.name(JsonKeys.SCREEN_WIDTH_PIXELS).value(this.screenWidthPixels);
        }
        if (this.screenHeightPixels != null) {
            objectWriter.name(JsonKeys.SCREEN_HEIGHT_PIXELS).value(this.screenHeightPixels);
        }
        if (this.screenDensity != null) {
            objectWriter.name(JsonKeys.SCREEN_DENSITY).value(this.screenDensity);
        }
        if (this.screenDpi != null) {
            objectWriter.name(JsonKeys.SCREEN_DPI).value(this.screenDpi);
        }
        if (this.bootTime != null) {
            objectWriter.name(JsonKeys.BOOT_TIME).value(iLogger, this.bootTime);
        }
        if (this.timezone != null) {
            objectWriter.name("timezone").value(iLogger, this.timezone);
        }
        if (this.id != null) {
            objectWriter.name("id").value(this.id);
        }
        if (this.language != null) {
            objectWriter.name(JsonKeys.LANGUAGE).value(this.language);
        }
        if (this.connectionType != null) {
            objectWriter.name(JsonKeys.CONNECTION_TYPE).value(this.connectionType);
        }
        if (this.batteryTemperature != null) {
            objectWriter.name(JsonKeys.BATTERY_TEMPERATURE).value(this.batteryTemperature);
        }
        if (this.locale != null) {
            objectWriter.name(JsonKeys.LOCALE).value(this.locale);
        }
        if (this.processorCount != null) {
            objectWriter.name(JsonKeys.PROCESSOR_COUNT).value(this.processorCount);
        }
        if (this.processorFrequency != null) {
            objectWriter.name(JsonKeys.PROCESSOR_FREQUENCY).value(this.processorFrequency);
        }
        if (this.cpuDescription != null) {
            objectWriter.name(JsonKeys.CPU_DESCRIPTION).value(this.cpuDescription);
        }
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                objectWriter.name(str).value(iLogger, this.unknown.get(str));
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<Device> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public Device deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            Device device = new Device();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -2076227591:
                        if (nextName.equals("timezone")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -2012489734:
                        if (nextName.equals(JsonKeys.BOOT_TIME)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1981332476:
                        if (nextName.equals(JsonKeys.SIMULATOR)) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1969347631:
                        if (nextName.equals(JsonKeys.MANUFACTURER)) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1613589672:
                        if (nextName.equals(JsonKeys.LANGUAGE)) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1608004830:
                        if (nextName.equals(JsonKeys.PROCESSOR_COUNT)) {
                            c = 5;
                            break;
                        }
                        break;
                    case -1439500848:
                        if (nextName.equals(JsonKeys.ORIENTATION)) {
                            c = 6;
                            break;
                        }
                        break;
                    case -1410521534:
                        if (nextName.equals(JsonKeys.BATTERY_TEMPERATURE)) {
                            c = 7;
                            break;
                        }
                        break;
                    case -1281860764:
                        if (nextName.equals(JsonKeys.FAMILY)) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -1097462182:
                        if (nextName.equals(JsonKeys.LOCALE)) {
                            c = '\t';
                            break;
                        }
                        break;
                    case -1012222381:
                        if (nextName.equals(JsonKeys.ONLINE)) {
                            c = '\n';
                            break;
                        }
                        break;
                    case -877252910:
                        if (nextName.equals(JsonKeys.BATTERY_LEVEL)) {
                            c = 11;
                            break;
                        }
                        break;
                    case -619038223:
                        if (nextName.equals(JsonKeys.MODEL_ID)) {
                            c = '\f';
                            break;
                        }
                        break;
                    case -568274923:
                        if (nextName.equals(JsonKeys.SCREEN_DENSITY)) {
                            c = '\r';
                            break;
                        }
                        break;
                    case -417046774:
                        if (nextName.equals(JsonKeys.SCREEN_DPI)) {
                            c = 14;
                            break;
                        }
                        break;
                    case -136523212:
                        if (nextName.equals(JsonKeys.FREE_MEMORY)) {
                            c = 15;
                            break;
                        }
                        break;
                    case 3355:
                        if (nextName.equals("id")) {
                            c = 16;
                            break;
                        }
                        break;
                    case 3373707:
                        if (nextName.equals("name")) {
                            c = 17;
                            break;
                        }
                        break;
                    case 59142220:
                        if (nextName.equals(JsonKeys.LOW_MEMORY)) {
                            c = 18;
                            break;
                        }
                        break;
                    case 93076189:
                        if (nextName.equals(JsonKeys.ARCHS)) {
                            c = 19;
                            break;
                        }
                        break;
                    case 93997959:
                        if (nextName.equals(JsonKeys.BRAND)) {
                            c = 20;
                            break;
                        }
                        break;
                    case 104069929:
                        if (nextName.equals(JsonKeys.MODEL)) {
                            c = 21;
                            break;
                        }
                        break;
                    case 115746789:
                        if (nextName.equals(JsonKeys.CPU_DESCRIPTION)) {
                            c = 22;
                            break;
                        }
                        break;
                    case 244497903:
                        if (nextName.equals(JsonKeys.PROCESSOR_FREQUENCY)) {
                            c = 23;
                            break;
                        }
                        break;
                    case 731866107:
                        if (nextName.equals(JsonKeys.CONNECTION_TYPE)) {
                            c = 24;
                            break;
                        }
                        break;
                    case 817830969:
                        if (nextName.equals(JsonKeys.SCREEN_WIDTH_PIXELS)) {
                            c = 25;
                            break;
                        }
                        break;
                    case 823882553:
                        if (nextName.equals(JsonKeys.EXTERNAL_STORAGE_SIZE)) {
                            c = JSONLexer.EOI;
                            break;
                        }
                        break;
                    case 897428293:
                        if (nextName.equals(JsonKeys.STORAGE_SIZE)) {
                            c = 27;
                            break;
                        }
                        break;
                    case 1331465768:
                        if (nextName.equals(JsonKeys.USABLE_MEMORY)) {
                            c = 28;
                            break;
                        }
                        break;
                    case 1418777727:
                        if (nextName.equals("memory_size")) {
                            c = 29;
                            break;
                        }
                        break;
                    case 1436115569:
                        if (nextName.equals(JsonKeys.CHARGING)) {
                            c = 30;
                            break;
                        }
                        break;
                    case 1450613660:
                        if (nextName.equals(JsonKeys.EXTERNAL_FREE_STORAGE)) {
                            c = 31;
                            break;
                        }
                        break;
                    case 1524159400:
                        if (nextName.equals(JsonKeys.FREE_STORAGE)) {
                            c = ' ';
                            break;
                        }
                        break;
                    case 1556284978:
                        if (nextName.equals(JsonKeys.SCREEN_HEIGHT_PIXELS)) {
                            c = '!';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        device.timezone = jsonObjectReader.nextTimeZoneOrNull(iLogger);
                        break;
                    case 1:
                        if (jsonObjectReader.peek() != JsonToken.STRING) {
                            break;
                        } else {
                            device.bootTime = jsonObjectReader.nextDateOrNull(iLogger);
                            break;
                        }
                    case 2:
                        device.simulator = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 3:
                        device.manufacturer = jsonObjectReader.nextStringOrNull();
                        break;
                    case 4:
                        device.language = jsonObjectReader.nextStringOrNull();
                        break;
                    case 5:
                        device.processorCount = jsonObjectReader.nextIntegerOrNull();
                        break;
                    case 6:
                        device.orientation = (DeviceOrientation) jsonObjectReader.nextOrNull(iLogger, new DeviceOrientation.Deserializer());
                        break;
                    case 7:
                        device.batteryTemperature = jsonObjectReader.nextFloatOrNull();
                        break;
                    case '\b':
                        device.family = jsonObjectReader.nextStringOrNull();
                        break;
                    case '\t':
                        device.locale = jsonObjectReader.nextStringOrNull();
                        break;
                    case '\n':
                        device.online = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 11:
                        device.batteryLevel = jsonObjectReader.nextFloatOrNull();
                        break;
                    case '\f':
                        device.modelId = jsonObjectReader.nextStringOrNull();
                        break;
                    case '\r':
                        device.screenDensity = jsonObjectReader.nextFloatOrNull();
                        break;
                    case 14:
                        device.screenDpi = jsonObjectReader.nextIntegerOrNull();
                        break;
                    case 15:
                        device.freeMemory = jsonObjectReader.nextLongOrNull();
                        break;
                    case 16:
                        device.id = jsonObjectReader.nextStringOrNull();
                        break;
                    case 17:
                        device.name = jsonObjectReader.nextStringOrNull();
                        break;
                    case 18:
                        device.lowMemory = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 19:
                        List list = (List) jsonObjectReader.nextObjectOrNull();
                        if (list == null) {
                            break;
                        } else {
                            String[] strArr = new String[list.size()];
                            list.toArray(strArr);
                            device.archs = strArr;
                            break;
                        }
                    case 20:
                        device.brand = jsonObjectReader.nextStringOrNull();
                        break;
                    case 21:
                        device.model = jsonObjectReader.nextStringOrNull();
                        break;
                    case 22:
                        device.cpuDescription = jsonObjectReader.nextStringOrNull();
                        break;
                    case 23:
                        device.processorFrequency = jsonObjectReader.nextDoubleOrNull();
                        break;
                    case 24:
                        device.connectionType = jsonObjectReader.nextStringOrNull();
                        break;
                    case 25:
                        device.screenWidthPixels = jsonObjectReader.nextIntegerOrNull();
                        break;
                    case 26:
                        device.externalStorageSize = jsonObjectReader.nextLongOrNull();
                        break;
                    case 27:
                        device.storageSize = jsonObjectReader.nextLongOrNull();
                        break;
                    case 28:
                        device.usableMemory = jsonObjectReader.nextLongOrNull();
                        break;
                    case 29:
                        device.memorySize = jsonObjectReader.nextLongOrNull();
                        break;
                    case 30:
                        device.charging = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 31:
                        device.externalFreeStorage = jsonObjectReader.nextLongOrNull();
                        break;
                    case ' ':
                        device.freeStorage = jsonObjectReader.nextLongOrNull();
                        break;
                    case '!':
                        device.screenHeightPixels = jsonObjectReader.nextIntegerOrNull();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            device.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return device;
        }
    }
}
