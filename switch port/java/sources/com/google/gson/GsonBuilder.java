package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class GsonBuilder {
    private boolean complexMapKeySerialization;
    private String datePattern;
    private int dateStyle;
    private boolean escapeHtmlChars;
    private Excluder excluder;
    private final List<TypeAdapterFactory> factories;
    private FieldNamingStrategy fieldNamingPolicy;
    private boolean generateNonExecutableJson;
    private final List<TypeAdapterFactory> hierarchyFactories;
    private final Map<Type, InstanceCreator<?>> instanceCreators;
    private boolean lenient;
    private LongSerializationPolicy longSerializationPolicy;
    private boolean prettyPrinting;
    private boolean serializeNulls;
    private boolean serializeSpecialFloatingPointValues;
    private int timeStyle;

    public GsonBuilder disableHtmlEscaping() {
        this.escapeHtmlChars = false;
        return this;
    }

    public GsonBuilder enableComplexMapKeySerialization() {
        this.complexMapKeySerialization = true;
        return this;
    }

    public GsonBuilder generateNonExecutableJson() {
        this.generateNonExecutableJson = true;
        return this;
    }

    public GsonBuilder serializeNulls() {
        this.serializeNulls = true;
        return this;
    }

    public GsonBuilder serializeSpecialFloatingPointValues() {
        this.serializeSpecialFloatingPointValues = true;
        return this;
    }

    public GsonBuilder setDateFormat(int i) {
        this.dateStyle = i;
        this.datePattern = null;
        return this;
    }

    public GsonBuilder setDateFormat(int i, int i2) {
        this.dateStyle = i;
        this.timeStyle = i2;
        this.datePattern = null;
        return this;
    }

    public GsonBuilder setDateFormat(String str) {
        this.datePattern = str;
        return this;
    }

    public GsonBuilder setFieldNamingPolicy(FieldNamingPolicy fieldNamingPolicy) {
        this.fieldNamingPolicy = fieldNamingPolicy;
        return this;
    }

    public GsonBuilder setFieldNamingStrategy(FieldNamingStrategy fieldNamingStrategy) {
        this.fieldNamingPolicy = fieldNamingStrategy;
        return this;
    }

    public GsonBuilder setLenient() {
        this.lenient = true;
        return this;
    }

    public GsonBuilder setLongSerializationPolicy(LongSerializationPolicy longSerializationPolicy) {
        this.longSerializationPolicy = longSerializationPolicy;
        return this;
    }

    public GsonBuilder setPrettyPrinting() {
        this.prettyPrinting = true;
        return this;
    }

    public GsonBuilder() {
        this.excluder = Excluder.DEFAULT;
        this.longSerializationPolicy = LongSerializationPolicy.DEFAULT;
        this.fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
        this.instanceCreators = new HashMap();
        this.factories = new ArrayList();
        this.hierarchyFactories = new ArrayList();
        this.serializeNulls = false;
        this.dateStyle = 2;
        this.timeStyle = 2;
        this.complexMapKeySerialization = false;
        this.serializeSpecialFloatingPointValues = false;
        this.escapeHtmlChars = true;
        this.prettyPrinting = false;
        this.generateNonExecutableJson = false;
        this.lenient = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GsonBuilder(Gson gson) {
        this.excluder = Excluder.DEFAULT;
        this.longSerializationPolicy = LongSerializationPolicy.DEFAULT;
        this.fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
        HashMap hashMap = new HashMap();
        this.instanceCreators = hashMap;
        ArrayList arrayList = new ArrayList();
        this.factories = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.hierarchyFactories = arrayList2;
        this.serializeNulls = false;
        this.dateStyle = 2;
        this.timeStyle = 2;
        this.complexMapKeySerialization = false;
        this.serializeSpecialFloatingPointValues = false;
        this.escapeHtmlChars = true;
        this.prettyPrinting = false;
        this.generateNonExecutableJson = false;
        this.lenient = false;
        this.excluder = gson.excluder;
        this.fieldNamingPolicy = gson.fieldNamingStrategy;
        hashMap.putAll(gson.instanceCreators);
        this.serializeNulls = gson.serializeNulls;
        this.complexMapKeySerialization = gson.complexMapKeySerialization;
        this.generateNonExecutableJson = gson.generateNonExecutableJson;
        this.escapeHtmlChars = gson.htmlSafe;
        this.prettyPrinting = gson.prettyPrinting;
        this.lenient = gson.lenient;
        this.serializeSpecialFloatingPointValues = gson.serializeSpecialFloatingPointValues;
        this.longSerializationPolicy = gson.longSerializationPolicy;
        this.datePattern = gson.datePattern;
        this.dateStyle = gson.dateStyle;
        this.timeStyle = gson.timeStyle;
        arrayList.addAll(gson.builderFactories);
        arrayList2.addAll(gson.builderHierarchyFactories);
    }

    public GsonBuilder setVersion(double d) {
        this.excluder = this.excluder.withVersion(d);
        return this;
    }

    public GsonBuilder excludeFieldsWithModifiers(int... iArr) {
        this.excluder = this.excluder.withModifiers(iArr);
        return this;
    }

    public GsonBuilder excludeFieldsWithoutExposeAnnotation() {
        this.excluder = this.excluder.excludeFieldsWithoutExposeAnnotation();
        return this;
    }

    public GsonBuilder disableInnerClassSerialization() {
        this.excluder = this.excluder.disableInnerClassSerialization();
        return this;
    }

    public GsonBuilder setExclusionStrategies(ExclusionStrategy... exclusionStrategyArr) {
        for (ExclusionStrategy exclusionStrategy : exclusionStrategyArr) {
            this.excluder = this.excluder.withExclusionStrategy(exclusionStrategy, true, true);
        }
        return this;
    }

    public GsonBuilder addSerializationExclusionStrategy(ExclusionStrategy exclusionStrategy) {
        this.excluder = this.excluder.withExclusionStrategy(exclusionStrategy, true, false);
        return this;
    }

    public GsonBuilder addDeserializationExclusionStrategy(ExclusionStrategy exclusionStrategy) {
        this.excluder = this.excluder.withExclusionStrategy(exclusionStrategy, false, true);
        return this;
    }

    public GsonBuilder registerTypeAdapter(Type type, Object obj) {
        boolean z = obj instanceof JsonSerializer;
        C$Gson$Preconditions.checkArgument(z || (obj instanceof JsonDeserializer) || (obj instanceof InstanceCreator) || (obj instanceof TypeAdapter));
        if (obj instanceof InstanceCreator) {
            this.instanceCreators.put(type, (InstanceCreator) obj);
        }
        if (z || (obj instanceof JsonDeserializer)) {
            this.factories.add(TreeTypeAdapter.newFactoryWithMatchRawType(TypeToken.get(type), obj));
        }
        if (obj instanceof TypeAdapter) {
            this.factories.add(TypeAdapters.newFactory(TypeToken.get(type), (TypeAdapter) obj));
        }
        return this;
    }

    public GsonBuilder registerTypeAdapterFactory(TypeAdapterFactory typeAdapterFactory) {
        this.factories.add(typeAdapterFactory);
        return this;
    }

    public GsonBuilder registerTypeHierarchyAdapter(Class<?> cls, Object obj) {
        boolean z = obj instanceof JsonSerializer;
        C$Gson$Preconditions.checkArgument(z || (obj instanceof JsonDeserializer) || (obj instanceof TypeAdapter));
        if ((obj instanceof JsonDeserializer) || z) {
            this.hierarchyFactories.add(TreeTypeAdapter.newTypeHierarchyFactory(cls, obj));
        }
        if (obj instanceof TypeAdapter) {
            this.factories.add(TypeAdapters.newTypeHierarchyFactory(cls, (TypeAdapter) obj));
        }
        return this;
    }

    public Gson create() {
        List<TypeAdapterFactory> arrayList = new ArrayList<>(this.factories.size() + this.hierarchyFactories.size() + 3);
        arrayList.addAll(this.factories);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.hierarchyFactories);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        addTypeAdaptersForDate(this.datePattern, this.dateStyle, this.timeStyle, arrayList);
        return new Gson(this.excluder, this.fieldNamingPolicy, this.instanceCreators, this.serializeNulls, this.complexMapKeySerialization, this.generateNonExecutableJson, this.escapeHtmlChars, this.prettyPrinting, this.lenient, this.serializeSpecialFloatingPointValues, this.longSerializationPolicy, this.datePattern, this.dateStyle, this.timeStyle, this.factories, this.hierarchyFactories, arrayList);
    }

    private void addTypeAdaptersForDate(String str, int i, int i2, List<TypeAdapterFactory> list) {
        DefaultDateTypeAdapter defaultDateTypeAdapter;
        DefaultDateTypeAdapter defaultDateTypeAdapter2;
        DefaultDateTypeAdapter defaultDateTypeAdapter3;
        if (str != null && !"".equals(str.trim())) {
            defaultDateTypeAdapter = new DefaultDateTypeAdapter((Class<? extends Date>) Date.class, str);
            defaultDateTypeAdapter2 = new DefaultDateTypeAdapter((Class<? extends Date>) Timestamp.class, str);
            defaultDateTypeAdapter3 = new DefaultDateTypeAdapter((Class<? extends Date>) java.sql.Date.class, str);
        } else {
            if (i == 2 || i2 == 2) {
                return;
            }
            defaultDateTypeAdapter = new DefaultDateTypeAdapter(Date.class, i, i2);
            DefaultDateTypeAdapter defaultDateTypeAdapter4 = new DefaultDateTypeAdapter(Timestamp.class, i, i2);
            DefaultDateTypeAdapter defaultDateTypeAdapter5 = new DefaultDateTypeAdapter(java.sql.Date.class, i, i2);
            defaultDateTypeAdapter2 = defaultDateTypeAdapter4;
            defaultDateTypeAdapter3 = defaultDateTypeAdapter5;
        }
        list.add(TypeAdapters.newFactory(Date.class, defaultDateTypeAdapter));
        list.add(TypeAdapters.newFactory(Timestamp.class, defaultDateTypeAdapter2));
        list.add(TypeAdapters.newFactory(java.sql.Date.class, defaultDateTypeAdapter3));
    }
}
