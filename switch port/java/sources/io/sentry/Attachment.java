package io.sentry;

import androidx.media3.common.MimeTypes;
import io.sentry.protocol.ViewHierarchy;
import java.io.File;

/* loaded from: classes3.dex */
public final class Attachment {
    private static final String DEFAULT_ATTACHMENT_TYPE = "event.attachment";
    private static final String VIEW_HIERARCHY_ATTACHMENT_TYPE = "event.view_hierarchy";
    private final boolean addToTransactions;
    private String attachmentType;
    private byte[] bytes;
    private final String contentType;
    private final String filename;
    private String pathname;
    private final JsonSerializable serializable;

    public String getAttachmentType() {
        return this.attachmentType;
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getFilename() {
        return this.filename;
    }

    public String getPathname() {
        return this.pathname;
    }

    public JsonSerializable getSerializable() {
        return this.serializable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAddToTransactions() {
        return this.addToTransactions;
    }

    public Attachment(byte[] bArr, String str) {
        this(bArr, str, (String) null);
    }

    public Attachment(byte[] bArr, String str, String str2) {
        this(bArr, str, str2, false);
    }

    public Attachment(byte[] bArr, String str, String str2, boolean z) {
        this(bArr, str, str2, DEFAULT_ATTACHMENT_TYPE, z);
    }

    public Attachment(byte[] bArr, String str, String str2, String str3, boolean z) {
        this.bytes = bArr;
        this.serializable = null;
        this.filename = str;
        this.contentType = str2;
        this.attachmentType = str3;
        this.addToTransactions = z;
    }

    public Attachment(JsonSerializable jsonSerializable, String str, String str2, String str3, boolean z) {
        this.bytes = null;
        this.serializable = jsonSerializable;
        this.filename = str;
        this.contentType = str2;
        this.attachmentType = str3;
        this.addToTransactions = z;
    }

    public Attachment(String str) {
        this(str, new File(str).getName());
    }

    public Attachment(String str, String str2) {
        this(str, str2, (String) null);
    }

    public Attachment(String str, String str2, String str3) {
        this(str, str2, str3, DEFAULT_ATTACHMENT_TYPE, false);
    }

    public Attachment(String str, String str2, String str3, String str4, boolean z) {
        this.pathname = str;
        this.filename = str2;
        this.serializable = null;
        this.contentType = str3;
        this.attachmentType = str4;
        this.addToTransactions = z;
    }

    public Attachment(String str, String str2, String str3, boolean z) {
        this.attachmentType = DEFAULT_ATTACHMENT_TYPE;
        this.pathname = str;
        this.filename = str2;
        this.serializable = null;
        this.contentType = str3;
        this.addToTransactions = z;
    }

    public Attachment(String str, String str2, String str3, boolean z, String str4) {
        this.pathname = str;
        this.filename = str2;
        this.serializable = null;
        this.contentType = str3;
        this.addToTransactions = z;
        this.attachmentType = str4;
    }

    public static Attachment fromScreenshot(byte[] bArr) {
        return new Attachment(bArr, "screenshot.png", MimeTypes.IMAGE_PNG, false);
    }

    public static Attachment fromViewHierarchy(ViewHierarchy viewHierarchy) {
        return new Attachment((JsonSerializable) viewHierarchy, "view-hierarchy.json", "application/json", VIEW_HIERARCHY_ATTACHMENT_TYPE, false);
    }

    public static Attachment fromThreadDump(byte[] bArr) {
        return new Attachment(bArr, "thread-dump.txt", "text/plain", false);
    }
}
