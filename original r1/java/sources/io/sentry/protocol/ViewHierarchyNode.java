package io.sentry.protocol;

import androidx.compose.material3.MenuKt;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ViewHierarchyNode implements JsonUnknown, JsonSerializable {
    private Double alpha;
    private List<ViewHierarchyNode> children;
    private Double height;
    private String identifier;
    private String renderingSystem;
    private String tag;
    private String type;
    private Map<String, Object> unknown;
    private String visibility;
    private Double width;
    private Double x;
    private Double y;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String ALPHA = "alpha";
        public static final String CHILDREN = "children";
        public static final String HEIGHT = "height";
        public static final String IDENTIFIER = "identifier";
        public static final String RENDERING_SYSTEM = "rendering_system";
        public static final String TAG = "tag";
        public static final String TYPE = "type";
        public static final String VISIBILITY = "visibility";
        public static final String WIDTH = "width";
        public static final String X = "x";
        public static final String Y = "y";
    }

    public Double getAlpha() {
        return this.alpha;
    }

    public List<ViewHierarchyNode> getChildren() {
        return this.children;
    }

    public Double getHeight() {
        return this.height;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public String getRenderingSystem() {
        return this.renderingSystem;
    }

    public String getTag() {
        return this.tag;
    }

    public String getType() {
        return this.type;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getVisibility() {
        return this.visibility;
    }

    public Double getWidth() {
        return this.width;
    }

    public Double getX() {
        return this.x;
    }

    public Double getY() {
        return this.y;
    }

    public void setAlpha(Double d) {
        this.alpha = d;
    }

    public void setChildren(List<ViewHierarchyNode> list) {
        this.children = list;
    }

    public void setHeight(Double d) {
        this.height = d;
    }

    public void setIdentifier(String str) {
        this.identifier = str;
    }

    public void setRenderingSystem(String str) {
        this.renderingSystem = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setVisibility(String str) {
        this.visibility = str;
    }

    public void setWidth(Double d) {
        this.width = d;
    }

    public void setX(Double d) {
        this.x = d;
    }

    public void setY(Double d) {
        this.y = d;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.renderingSystem != null) {
            objectWriter.name("rendering_system").value(this.renderingSystem);
        }
        if (this.type != null) {
            objectWriter.name("type").value(this.type);
        }
        if (this.identifier != null) {
            objectWriter.name(JsonKeys.IDENTIFIER).value(this.identifier);
        }
        if (this.tag != null) {
            objectWriter.name(JsonKeys.TAG).value(this.tag);
        }
        if (this.width != null) {
            objectWriter.name(JsonKeys.WIDTH).value(this.width);
        }
        if (this.height != null) {
            objectWriter.name(JsonKeys.HEIGHT).value(this.height);
        }
        if (this.x != null) {
            objectWriter.name(JsonKeys.X).value(this.x);
        }
        if (this.y != null) {
            objectWriter.name(JsonKeys.Y).value(this.y);
        }
        if (this.visibility != null) {
            objectWriter.name(JsonKeys.VISIBILITY).value(this.visibility);
        }
        if (this.alpha != null) {
            objectWriter.name(JsonKeys.ALPHA).value(this.alpha);
        }
        List<ViewHierarchyNode> list = this.children;
        if (list != null && !list.isEmpty()) {
            objectWriter.name(JsonKeys.CHILDREN).value(iLogger, this.children);
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
    public static final class Deserializer implements JsonDeserializer<ViewHierarchyNode> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public ViewHierarchyNode deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            ViewHierarchyNode viewHierarchyNode = new ViewHierarchyNode();
            jsonObjectReader.beginObject();
            HashMap hashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1784982718:
                        if (nextName.equals("rendering_system")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1618432855:
                        if (nextName.equals(JsonKeys.IDENTIFIER)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1221029593:
                        if (nextName.equals(JsonKeys.HEIGHT)) {
                            c = 2;
                            break;
                        }
                        break;
                    case MenuKt.InTransitionDuration /* 120 */:
                        if (nextName.equals(JsonKeys.X)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 121:
                        if (nextName.equals(JsonKeys.Y)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 114586:
                        if (nextName.equals(JsonKeys.TAG)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 3575610:
                        if (nextName.equals("type")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 92909918:
                        if (nextName.equals(JsonKeys.ALPHA)) {
                            c = 7;
                            break;
                        }
                        break;
                    case 113126854:
                        if (nextName.equals(JsonKeys.WIDTH)) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1659526655:
                        if (nextName.equals(JsonKeys.CHILDREN)) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1941332754:
                        if (nextName.equals(JsonKeys.VISIBILITY)) {
                            c = '\n';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        viewHierarchyNode.renderingSystem = jsonObjectReader.nextStringOrNull();
                        break;
                    case 1:
                        viewHierarchyNode.identifier = jsonObjectReader.nextStringOrNull();
                        break;
                    case 2:
                        viewHierarchyNode.height = jsonObjectReader.nextDoubleOrNull();
                        break;
                    case 3:
                        viewHierarchyNode.x = jsonObjectReader.nextDoubleOrNull();
                        break;
                    case 4:
                        viewHierarchyNode.y = jsonObjectReader.nextDoubleOrNull();
                        break;
                    case 5:
                        viewHierarchyNode.tag = jsonObjectReader.nextStringOrNull();
                        break;
                    case 6:
                        viewHierarchyNode.type = jsonObjectReader.nextStringOrNull();
                        break;
                    case 7:
                        viewHierarchyNode.alpha = jsonObjectReader.nextDoubleOrNull();
                        break;
                    case '\b':
                        viewHierarchyNode.width = jsonObjectReader.nextDoubleOrNull();
                        break;
                    case '\t':
                        viewHierarchyNode.children = jsonObjectReader.nextListOrNull(iLogger, this);
                        break;
                    case '\n':
                        viewHierarchyNode.visibility = jsonObjectReader.nextStringOrNull();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, hashMap, nextName);
                        break;
                }
            }
            jsonObjectReader.endObject();
            viewHierarchyNode.setUnknown(hashMap);
            return viewHierarchyNode;
        }
    }
}
