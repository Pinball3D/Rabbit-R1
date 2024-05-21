package com.google.common.base;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public enum StandardSystemProperty {
    JAVA_VERSION("java.version"),
    JAVA_VENDOR("java.vendor"),
    JAVA_VENDOR_URL("java.vendor.url"),
    JAVA_HOME("java.home"),
    JAVA_VM_SPECIFICATION_VERSION("java.vm.specification.version"),
    JAVA_VM_SPECIFICATION_VENDOR("java.vm.specification.vendor"),
    JAVA_VM_SPECIFICATION_NAME("java.vm.specification.name"),
    JAVA_VM_VERSION("java.vm.version"),
    JAVA_VM_VENDOR("java.vm.vendor"),
    JAVA_VM_NAME("java.vm.name"),
    JAVA_SPECIFICATION_VERSION("java.specification.version"),
    JAVA_SPECIFICATION_VENDOR("java.specification.vendor"),
    JAVA_SPECIFICATION_NAME("java.specification.name"),
    JAVA_CLASS_VERSION("java.class.version"),
    JAVA_CLASS_PATH("java.class.path"),
    JAVA_LIBRARY_PATH("java.library.path"),
    JAVA_IO_TMPDIR("java.io.tmpdir"),
    JAVA_COMPILER("java.compiler"),
    JAVA_EXT_DIRS("java.ext.dirs"),
    OS_NAME("os.name"),
    OS_ARCH("os.arch"),
    OS_VERSION("os.version"),
    FILE_SEPARATOR("file.separator"),
    PATH_SEPARATOR("path.separator"),
    LINE_SEPARATOR("line.separator"),
    USER_NAME("user.name"),
    USER_HOME("user.home"),
    USER_DIR("user.dir");

    private final String key;

    public String key() {
        return this.key;
    }

    StandardSystemProperty(String str) {
        this.key = str;
    }

    @CheckForNull
    public String value() {
        return System.getProperty(this.key);
    }

    @Override // java.lang.Enum
    public String toString() {
        String key = key();
        String value = value();
        return new StringBuilder(String.valueOf(key).length() + 1 + String.valueOf(value).length()).append(key).append("=").append(value).toString();
    }
}
