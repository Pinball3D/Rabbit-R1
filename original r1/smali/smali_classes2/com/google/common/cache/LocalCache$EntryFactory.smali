.class abstract enum Lcom/google/common/cache/LocalCache$EntryFactory;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "EntryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/LocalCache$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/LocalCache$EntryFactory;

.field static final ACCESS_MASK:I = 0x1

.field public static final enum STRONG:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

.field static final WEAK_MASK:I = 0x4

.field public static final enum WEAK_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

.field static final WRITE_MASK:I = 0x2

.field static final factories:[Lcom/google/common/cache/LocalCache$EntryFactory;


# direct methods
.method private static synthetic $values()[Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/common/cache/LocalCache$EntryFactory;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG:Lcom/google/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK:Lcom/google/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 442
    new-instance v0, Lcom/google/common/cache/LocalCache$EntryFactory$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/LocalCache$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 449
    new-instance v1, Lcom/google/common/cache/LocalCache$EntryFactory$2;

    const-string v3, "STRONG_ACCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/cache/LocalCache$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 464
    new-instance v3, Lcom/google/common/cache/LocalCache$EntryFactory$3;

    const-string v5, "STRONG_WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/cache/LocalCache$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 479
    new-instance v5, Lcom/google/common/cache/LocalCache$EntryFactory$4;

    const-string v7, "STRONG_ACCESS_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/cache/LocalCache$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 495
    new-instance v7, Lcom/google/common/cache/LocalCache$EntryFactory$5;

    const-string v9, "WEAK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/common/cache/LocalCache$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 502
    new-instance v9, Lcom/google/common/cache/LocalCache$EntryFactory$6;

    const-string v11, "WEAK_ACCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/common/cache/LocalCache$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 517
    new-instance v11, Lcom/google/common/cache/LocalCache$EntryFactory$7;

    const-string v13, "WEAK_WRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/common/cache/LocalCache$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 532
    new-instance v13, Lcom/google/common/cache/LocalCache$EntryFactory$8;

    const-string v15, "WEAK_ACCESS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/common/cache/LocalCache$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 441
    invoke-static {}, Lcom/google/common/cache/LocalCache$EntryFactory;->$values()[Lcom/google/common/cache/LocalCache$EntryFactory;

    move-result-object v15

    sput-object v15, Lcom/google/common/cache/LocalCache$EntryFactory;->$VALUES:[Lcom/google/common/cache/LocalCache$EntryFactory;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 556
    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/google/common/cache/LocalCache$EntryFactory;->factories:[Lcom/google/common/cache/LocalCache$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/LocalCache$1;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getFactory(Lcom/google/common/cache/LocalCache$Strength;ZZ)Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 2

    .line 570
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    or-int/2addr p0, p1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :cond_1
    or-int/2addr p0, v1

    sget-object p1, Lcom/google/common/cache/LocalCache$EntryFactory;->factories:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 573
    aget-object p0, p1, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 1

    const-class v0, Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 441
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/LocalCache$EntryFactory;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 1

    sget-object v0, Lcom/google/common/cache/LocalCache$EntryFactory;->$VALUES:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 441
    invoke-virtual {v0}, [Lcom/google/common/cache/LocalCache$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/LocalCache$EntryFactory;

    return-object v0
.end method


# virtual methods
.method copyAccessEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 603
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getAccessTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 605
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 606
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 608
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->nullifyAccessOrder(Lcom/google/common/cache/ReferenceEntry;)V

    return-void
.end method

.method copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 596
    invoke-interface {p2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    return-object p0
.end method

.method copyWriteEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 615
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/ReferenceEntry;->setWriteTime(J)V

    .line 617
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/google/common/cache/LocalCache;->connectWriteOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 618
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/google/common/cache/LocalCache;->connectWriteOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 620
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->nullifyWriteOrder(Lcom/google/common/cache/ReferenceEntry;)V

    return-void
.end method

.method abstract newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .param p4    # Lcom/google/common/cache/ReferenceEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method
