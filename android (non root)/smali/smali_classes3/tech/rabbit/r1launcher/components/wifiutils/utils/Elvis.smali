.class public final Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;
.super Ljava/lang/Object;
.source "Elvis.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public static empty()Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis<",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis<",
            "TT;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNonNull(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis<",
            "TT;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    const-string v1, "SHOULD NOT BE NULL"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method public getBoolean()Z
    .locals 2

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 53
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getDouble()D
    .locals 3

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 76
    :cond_0
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 77
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public getInt()I
    .locals 2

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 60
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 61
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getLong()J
    .locals 3

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 68
    :cond_0
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 69
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public ifPresent(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next(Landroidx/arch/core/util/Function;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/arch/core/util/Function<",
            "-TT;+TS;>;)",
            "Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis<",
            "TS;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->mObject:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method
