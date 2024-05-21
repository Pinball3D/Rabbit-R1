package io.sentry.config;

import io.sentry.util.Objects;
import io.sentry.util.StringUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes3.dex */
abstract class AbstractPropertiesProvider implements PropertiesProvider {
    private final String prefix;
    private final Properties properties;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractPropertiesProvider(String str, Properties properties) {
        this.prefix = (String) Objects.requireNonNull(str, "prefix is required");
        this.properties = (Properties) Objects.requireNonNull(properties, "properties are required");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractPropertiesProvider(Properties properties) {
        this("", properties);
    }

    @Override // io.sentry.config.PropertiesProvider
    public String getProperty(String str) {
        return StringUtils.removeSurrounding(this.properties.getProperty(this.prefix + str), "\"");
    }

    @Override // io.sentry.config.PropertiesProvider
    public Map<String, String> getMap(String str) {
        String str2 = this.prefix + str + ".";
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.properties.entrySet()) {
            if ((entry.getKey() instanceof String) && (entry.getValue() instanceof String)) {
                String str3 = (String) entry.getKey();
                if (str3.startsWith(str2)) {
                    hashMap.put(str3.substring(str2.length()), StringUtils.removeSurrounding((String) entry.getValue(), "\""));
                }
            }
        }
        return hashMap;
    }
}
