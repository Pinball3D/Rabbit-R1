.class public final enum Lcom/google/common/base/StandardSystemProperty;
.super Ljava/lang/Enum;
.source "StandardSystemProperty.java"


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/StandardSystemProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/StandardSystemProperty;

.field public static final enum FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_DIR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_HOME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_NAME:Lcom/google/common/base/StandardSystemProperty;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/google/common/base/StandardSystemProperty;
    .locals 28

    sget-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    sget-object v2, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

    sget-object v3, Lcom/google/common/base/StandardSystemProperty;->JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

    sget-object v4, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    sget-object v5, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    sget-object v6, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    sget-object v7, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

    sget-object v8, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    sget-object v9, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

    sget-object v10, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    sget-object v11, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    sget-object v12, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    sget-object v13, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    sget-object v14, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

    sget-object v15, Lcom/google/common/base/StandardSystemProperty;->JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

    sget-object v16, Lcom/google/common/base/StandardSystemProperty;->JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

    sget-object v17, Lcom/google/common/base/StandardSystemProperty;->JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

    sget-object v18, Lcom/google/common/base/StandardSystemProperty;->JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

    sget-object v19, Lcom/google/common/base/StandardSystemProperty;->OS_NAME:Lcom/google/common/base/StandardSystemProperty;

    sget-object v20, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    sget-object v21, Lcom/google/common/base/StandardSystemProperty;->OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    sget-object v22, Lcom/google/common/base/StandardSystemProperty;->FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    sget-object v23, Lcom/google/common/base/StandardSystemProperty;->PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    sget-object v24, Lcom/google/common/base/StandardSystemProperty;->LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    sget-object v25, Lcom/google/common/base/StandardSystemProperty;->USER_NAME:Lcom/google/common/base/StandardSystemProperty;

    sget-object v26, Lcom/google/common/base/StandardSystemProperty;->USER_HOME:Lcom/google/common/base/StandardSystemProperty;

    sget-object v27, Lcom/google/common/base/StandardSystemProperty;->USER_DIR:Lcom/google/common/base/StandardSystemProperty;

    filled-new-array/range {v0 .. v27}, [Lcom/google/common/base/StandardSystemProperty;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v1, 0x0

    const-string v2, "java.version"

    const-string v3, "JAVA_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 34
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v1, 0x1

    const-string v2, "java.vendor"

    const-string v3, "JAVA_VENDOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 37
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v1, 0x2

    const-string v2, "java.vendor.url"

    const-string v3, "JAVA_VENDOR_URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

    .line 40
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v1, 0x3

    const-string v2, "java.home"

    const-string v3, "JAVA_HOME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

    .line 43
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v1, 0x4

    const-string v2, "java.vm.specification.version"

    const-string v3, "JAVA_VM_SPECIFICATION_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 46
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v1, 0x5

    const-string v2, "java.vm.specification.vendor"

    const-string v3, "JAVA_VM_SPECIFICATION_VENDOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 49
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v1, 0x6

    const-string v2, "java.vm.specification.name"

    const-string v3, "JAVA_VM_SPECIFICATION_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 52
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v1, 0x7

    const-string v2, "java.vm.version"

    const-string v3, "JAVA_VM_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 55
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x8

    const-string v2, "java.vm.vendor"

    const-string v3, "JAVA_VM_VENDOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 58
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x9

    const-string v2, "java.vm.name"

    const-string v3, "JAVA_VM_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 61
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0xa

    const-string v2, "java.specification.version"

    const-string v3, "JAVA_SPECIFICATION_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 64
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0xb

    const-string v2, "java.specification.vendor"

    const-string v3, "JAVA_SPECIFICATION_VENDOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 67
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0xc

    const-string v2, "java.specification.name"

    const-string v3, "JAVA_SPECIFICATION_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 70
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0xd

    const-string v2, "java.class.version"

    const-string v3, "JAVA_CLASS_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 73
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0xe

    const-string v2, "java.class.path"

    const-string v3, "JAVA_CLASS_PATH"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

    .line 76
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0xf

    const-string v2, "java.library.path"

    const-string v3, "JAVA_LIBRARY_PATH"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

    .line 79
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x10

    const-string v2, "java.io.tmpdir"

    const-string v3, "JAVA_IO_TMPDIR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

    .line 82
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x11

    const-string v2, "java.compiler"

    const-string v3, "JAVA_COMPILER"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

    .line 92
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x12

    const-string v2, "java.ext.dirs"

    const-string v3, "JAVA_EXT_DIRS"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

    .line 96
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x13

    const-string v2, "os.name"

    const-string v3, "OS_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 99
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x14

    const-string v2, "os.arch"

    const-string v3, "OS_ARCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    .line 102
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x15

    const-string v2, "os.version"

    const-string v3, "OS_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 105
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x16

    const-string v2, "file.separator"

    const-string v3, "FILE_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 108
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x17

    const-string v2, "path.separator"

    const-string v3, "PATH_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 111
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x18

    const-string v2, "line.separator"

    const-string v3, "LINE_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 114
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x19

    const-string v2, "user.name"

    const-string v3, "USER_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 117
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x1a

    const-string v2, "user.home"

    const-string v3, "USER_HOME"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_HOME:Lcom/google/common/base/StandardSystemProperty;

    .line 120
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v1, 0x1b

    const-string v2, "user.dir"

    const-string v3, "USER_DIR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_DIR:Lcom/google/common/base/StandardSystemProperty;

    .line 26
    invoke-static {}, Lcom/google/common/base/StandardSystemProperty;->$values()[Lcom/google/common/base/StandardSystemProperty;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->$VALUES:[Lcom/google/common/base/StandardSystemProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/StandardSystemProperty;
    .locals 1

    const-class v0, Lcom/google/common/base/StandardSystemProperty;

    .line 26
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/StandardSystemProperty;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/StandardSystemProperty;
    .locals 1

    sget-object v0, Lcom/google/common/base/StandardSystemProperty;->$VALUES:[Lcom/google/common/base/StandardSystemProperty;

    .line 26
    invoke-virtual {v0}, [Lcom/google/common/base/StandardSystemProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/StandardSystemProperty;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    .line 158
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
