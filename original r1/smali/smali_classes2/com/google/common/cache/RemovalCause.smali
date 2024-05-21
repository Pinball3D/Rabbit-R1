.class public abstract enum Lcom/google/common/cache/RemovalCause;
.super Ljava/lang/Enum;
.source "RemovalCause.java"


# annotations
.annotation runtime Lcom/google/common/cache/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/RemovalCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/RemovalCause;

.field public static final enum COLLECTED:Lcom/google/common/cache/RemovalCause;

.field public static final enum EXPIRED:Lcom/google/common/cache/RemovalCause;

.field public static final enum EXPLICIT:Lcom/google/common/cache/RemovalCause;

.field public static final enum REPLACED:Lcom/google/common/cache/RemovalCause;

.field public static final enum SIZE:Lcom/google/common/cache/RemovalCause;


# direct methods
.method private static synthetic $values()[Lcom/google/common/cache/RemovalCause;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/cache/RemovalCause;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/google/common/cache/RemovalCause$1;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 49
    new-instance v0, Lcom/google/common/cache/RemovalCause$2;

    const-string v1, "REPLACED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    .line 61
    new-instance v0, Lcom/google/common/cache/RemovalCause$3;

    const-string v1, "COLLECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 72
    new-instance v0, Lcom/google/common/cache/RemovalCause$4;

    const-string v1, "EXPIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    .line 83
    new-instance v0, Lcom/google/common/cache/RemovalCause$5;

    const-string v1, "SIZE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    .line 28
    invoke-static {}, Lcom/google/common/cache/RemovalCause;->$values()[Lcom/google/common/cache/RemovalCause;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/RemovalCause;->$VALUES:[Lcom/google/common/cache/RemovalCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/RemovalCause$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/RemovalCause;
    .locals 1

    const-class v0, Lcom/google/common/cache/RemovalCause;

    .line 28
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/RemovalCause;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/RemovalCause;
    .locals 1

    sget-object v0, Lcom/google/common/cache/RemovalCause;->$VALUES:[Lcom/google/common/cache/RemovalCause;

    .line 28
    invoke-virtual {v0}, [Lcom/google/common/cache/RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/RemovalCause;

    return-object v0
.end method


# virtual methods
.method abstract wasEvicted()Z
.end method
