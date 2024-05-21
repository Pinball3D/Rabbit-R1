.class Lorg/mediasoup/droid/Logger$DefaultLogHandler;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lorg/mediasoup/droid/Logger$LogHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mediasoup/droid/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultLogHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mediasoup/droid/Logger$1;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/mediasoup/droid/Logger$DefaultLogHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLog(Lorg/mediasoup/droid/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    sget-object p0, Lorg/mediasoup/droid/Logger$1;->$SwitchMap$org$mediasoup$droid$Logger$LogLevel:[I

    invoke-virtual {p1}, Lorg/mediasoup/droid/Logger$LogLevel;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    goto :goto_4

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_4

    .line 77
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit16 p1, v0, 0x800

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_4

    .line 72
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit16 p1, v0, 0x800

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    goto :goto_1

    .line 66
    :cond_2
    :goto_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_4

    .line 67
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit16 p1, v0, 0x800

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    goto :goto_2

    .line 61
    :cond_3
    :goto_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_4

    .line 62
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit16 p1, v0, 0x800

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method
