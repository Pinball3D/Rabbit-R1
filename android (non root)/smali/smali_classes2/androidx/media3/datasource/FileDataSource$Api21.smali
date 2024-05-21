.class final Landroidx/media3/datasource/FileDataSource$Api21;
.super Ljava/lang/Object;
.source "FileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)Z
    .locals 0

    .line 214
    invoke-static {p0}, Landroidx/media3/datasource/FileDataSource$Api21;->isPermissionError(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private static isPermissionError(Ljava/lang/Throwable;)Z
    .locals 1

    .line 217
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->EACCES:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
