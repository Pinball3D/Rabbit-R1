.class final Lcom/google/common/io/Closer$SuppressingSuppressor;
.super Ljava/lang/Object;
.source "Closer.java"

# interfaces
.implements Lcom/google/common/io/Closer$Suppressor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Closer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SuppressingSuppressor"
.end annotation


# instance fields
.field private final addSuppressed:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/io/Closer$SuppressingSuppressor;->addSuppressed:Ljava/lang/reflect/Method;

    return-void
.end method

.method static tryCreate()Lcom/google/common/io/Closer$SuppressingSuppressor;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 269
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    new-instance v1, Lcom/google/common/io/Closer$SuppressingSuppressor;

    invoke-direct {v1, v0}, Lcom/google/common/io/Closer$SuppressingSuppressor;-><init>(Ljava/lang/reflect/Method;)V

    return-object v1

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/Closer$SuppressingSuppressor;->addSuppressed:Ljava/lang/reflect/Method;

    .line 289
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    sget-object p0, Lcom/google/common/io/Closer$LoggingSuppressor;->INSTANCE:Lcom/google/common/io/Closer$LoggingSuppressor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/Closer$LoggingSuppressor;->suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
