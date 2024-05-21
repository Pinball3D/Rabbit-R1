package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.SentryLockReason;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class SentryStackFrame implements JsonUnknown, JsonSerializable {
    private Boolean _native;
    private String _package;
    private String absPath;
    private Integer colno;
    private String contextLine;
    private String filename;
    private List<Integer> framesOmitted;
    private String function;
    private String imageAddr;
    private Boolean inApp;
    private String instructionAddr;
    private Integer lineno;
    private SentryLockReason lock;
    private String module;
    private String platform;
    private List<String> postContext;
    private List<String> preContext;
    private String rawFunction;
    private String symbol;
    private String symbolAddr;
    private Map<String, Object> unknown;
    private Map<String, String> vars;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String ABS_PATH = "abs_path";
        public static final String COLNO = "colno";
        public static final String CONTEXT_LINE = "context_line";
        public static final String FILENAME = "filename";
        public static final String FUNCTION = "function";
        public static final String IMAGE_ADDR = "image_addr";
        public static final String INSTRUCTION_ADDR = "instruction_addr";
        public static final String IN_APP = "in_app";
        public static final String LINENO = "lineno";
        public static final String LOCK = "lock";
        public static final String MODULE = "module";
        public static final String NATIVE = "native";
        public static final String PACKAGE = "package";
        public static final String PLATFORM = "platform";
        public static final String RAW_FUNCTION = "raw_function";
        public static final String SYMBOL = "symbol";
        public static final String SYMBOL_ADDR = "symbol_addr";
    }

    public String getAbsPath() {
        return this.absPath;
    }

    public Integer getColno() {
        return this.colno;
    }

    public String getContextLine() {
        return this.contextLine;
    }

    public String getFilename() {
        return this.filename;
    }

    public List<Integer> getFramesOmitted() {
        return this.framesOmitted;
    }

    public String getFunction() {
        return this.function;
    }

    public String getImageAddr() {
        return this.imageAddr;
    }

    public String getInstructionAddr() {
        return this.instructionAddr;
    }

    public Integer getLineno() {
        return this.lineno;
    }

    public SentryLockReason getLock() {
        return this.lock;
    }

    public String getModule() {
        return this.module;
    }

    public String getPackage() {
        return this._package;
    }

    public String getPlatform() {
        return this.platform;
    }

    public List<String> getPostContext() {
        return this.postContext;
    }

    public List<String> getPreContext() {
        return this.preContext;
    }

    public String getRawFunction() {
        return this.rawFunction;
    }

    public String getSymbol() {
        return this.symbol;
    }

    public String getSymbolAddr() {
        return this.symbolAddr;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public Map<String, String> getVars() {
        return this.vars;
    }

    public Boolean isInApp() {
        return this.inApp;
    }

    public Boolean isNative() {
        return this._native;
    }

    public void setAbsPath(String str) {
        this.absPath = str;
    }

    public void setColno(Integer num) {
        this.colno = num;
    }

    public void setContextLine(String str) {
        this.contextLine = str;
    }

    public void setFilename(String str) {
        this.filename = str;
    }

    public void setFramesOmitted(List<Integer> list) {
        this.framesOmitted = list;
    }

    public void setFunction(String str) {
        this.function = str;
    }

    public void setImageAddr(String str) {
        this.imageAddr = str;
    }

    public void setInApp(Boolean bool) {
        this.inApp = bool;
    }

    public void setInstructionAddr(String str) {
        this.instructionAddr = str;
    }

    public void setLineno(Integer num) {
        this.lineno = num;
    }

    public void setLock(SentryLockReason sentryLockReason) {
        this.lock = sentryLockReason;
    }

    public void setModule(String str) {
        this.module = str;
    }

    public void setNative(Boolean bool) {
        this._native = bool;
    }

    public void setPackage(String str) {
        this._package = str;
    }

    public void setPlatform(String str) {
        this.platform = str;
    }

    public void setPostContext(List<String> list) {
        this.postContext = list;
    }

    public void setPreContext(List<String> list) {
        this.preContext = list;
    }

    public void setRawFunction(String str) {
        this.rawFunction = str;
    }

    public void setSymbol(String str) {
        this.symbol = str;
    }

    public void setSymbolAddr(String str) {
        this.symbolAddr = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setVars(Map<String, String> map) {
        this.vars = map;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.filename != null) {
            objectWriter.name("filename").value(this.filename);
        }
        if (this.function != null) {
            objectWriter.name(JsonKeys.FUNCTION).value(this.function);
        }
        if (this.module != null) {
            objectWriter.name("module").value(this.module);
        }
        if (this.lineno != null) {
            objectWriter.name(JsonKeys.LINENO).value(this.lineno);
        }
        if (this.colno != null) {
            objectWriter.name(JsonKeys.COLNO).value(this.colno);
        }
        if (this.absPath != null) {
            objectWriter.name(JsonKeys.ABS_PATH).value(this.absPath);
        }
        if (this.contextLine != null) {
            objectWriter.name(JsonKeys.CONTEXT_LINE).value(this.contextLine);
        }
        if (this.inApp != null) {
            objectWriter.name(JsonKeys.IN_APP).value(this.inApp);
        }
        if (this._package != null) {
            objectWriter.name(JsonKeys.PACKAGE).value(this._package);
        }
        if (this._native != null) {
            objectWriter.name(JsonKeys.NATIVE).value(this._native);
        }
        if (this.platform != null) {
            objectWriter.name("platform").value(this.platform);
        }
        if (this.imageAddr != null) {
            objectWriter.name("image_addr").value(this.imageAddr);
        }
        if (this.symbolAddr != null) {
            objectWriter.name(JsonKeys.SYMBOL_ADDR).value(this.symbolAddr);
        }
        if (this.instructionAddr != null) {
            objectWriter.name(JsonKeys.INSTRUCTION_ADDR).value(this.instructionAddr);
        }
        if (this.rawFunction != null) {
            objectWriter.name(JsonKeys.RAW_FUNCTION).value(this.rawFunction);
        }
        if (this.symbol != null) {
            objectWriter.name(JsonKeys.SYMBOL).value(this.symbol);
        }
        if (this.lock != null) {
            objectWriter.name(JsonKeys.LOCK).value(iLogger, this.lock);
        }
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.unknown.get(str);
                objectWriter.name(str);
                objectWriter.value(iLogger, obj);
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SentryStackFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public SentryStackFrame deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            SentryStackFrame sentryStackFrame = new SentryStackFrame();
            jsonObjectReader.beginObject();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1443345323:
                        if (nextName.equals("image_addr")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1184392185:
                        if (nextName.equals(JsonKeys.IN_APP)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1113875953:
                        if (nextName.equals(JsonKeys.RAW_FUNCTION)) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1102671691:
                        if (nextName.equals(JsonKeys.LINENO)) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1068784020:
                        if (nextName.equals("module")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1052618729:
                        if (nextName.equals(JsonKeys.NATIVE)) {
                            c = 5;
                            break;
                        }
                        break;
                    case -887523944:
                        if (nextName.equals(JsonKeys.SYMBOL)) {
                            c = 6;
                            break;
                        }
                        break;
                    case -807062458:
                        if (nextName.equals(JsonKeys.PACKAGE)) {
                            c = 7;
                            break;
                        }
                        break;
                    case -734768633:
                        if (nextName.equals("filename")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -330260936:
                        if (nextName.equals(JsonKeys.SYMBOL_ADDR)) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 3327275:
                        if (nextName.equals(JsonKeys.LOCK)) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 94842689:
                        if (nextName.equals(JsonKeys.COLNO)) {
                            c = 11;
                            break;
                        }
                        break;
                    case 410194178:
                        if (nextName.equals(JsonKeys.INSTRUCTION_ADDR)) {
                            c = '\f';
                            break;
                        }
                        break;
                    case 1116694660:
                        if (nextName.equals(JsonKeys.CONTEXT_LINE)) {
                            c = '\r';
                            break;
                        }
                        break;
                    case 1380938712:
                        if (nextName.equals(JsonKeys.FUNCTION)) {
                            c = 14;
                            break;
                        }
                        break;
                    case 1713445842:
                        if (nextName.equals(JsonKeys.ABS_PATH)) {
                            c = 15;
                            break;
                        }
                        break;
                    case 1874684019:
                        if (nextName.equals("platform")) {
                            c = 16;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        sentryStackFrame.imageAddr = jsonObjectReader.nextStringOrNull();
                        break;
                    case 1:
                        sentryStackFrame.inApp = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 2:
                        sentryStackFrame.rawFunction = jsonObjectReader.nextStringOrNull();
                        break;
                    case 3:
                        sentryStackFrame.lineno = jsonObjectReader.nextIntegerOrNull();
                        break;
                    case 4:
                        sentryStackFrame.module = jsonObjectReader.nextStringOrNull();
                        break;
                    case 5:
                        sentryStackFrame._native = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 6:
                        sentryStackFrame.symbol = jsonObjectReader.nextStringOrNull();
                        break;
                    case 7:
                        sentryStackFrame._package = jsonObjectReader.nextStringOrNull();
                        break;
                    case '\b':
                        sentryStackFrame.filename = jsonObjectReader.nextStringOrNull();
                        break;
                    case '\t':
                        sentryStackFrame.symbolAddr = jsonObjectReader.nextStringOrNull();
                        break;
                    case '\n':
                        sentryStackFrame.lock = (SentryLockReason) jsonObjectReader.nextOrNull(iLogger, new SentryLockReason.Deserializer());
                        break;
                    case 11:
                        sentryStackFrame.colno = jsonObjectReader.nextIntegerOrNull();
                        break;
                    case '\f':
                        sentryStackFrame.instructionAddr = jsonObjectReader.nextStringOrNull();
                        break;
                    case '\r':
                        sentryStackFrame.contextLine = jsonObjectReader.nextStringOrNull();
                        break;
                    case 14:
                        sentryStackFrame.function = jsonObjectReader.nextStringOrNull();
                        break;
                    case 15:
                        sentryStackFrame.absPath = jsonObjectReader.nextStringOrNull();
                        break;
                    case 16:
                        sentryStackFrame.platform = jsonObjectReader.nextStringOrNull();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            sentryStackFrame.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return sentryStackFrame;
        }
    }
}
