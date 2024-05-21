.class public final Ltech/rabbit/r1launcher/initstep/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/utils/Utils;",
        "",
        "()V",
        "isFastClick",
        "",
        "hit",
        "",
        "duration",
        "",
        "readSimOperatorName",
        "",
        "context",
        "Landroid/content/Context;",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/initstep/utils/Utils;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/initstep/utils/Utils;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/initstep/utils/Utils;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic isFastClick$default(Ltech/rabbit/r1launcher/initstep/utils/Utils;[JJILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x1f4

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/initstep/utils/Utils;->isFastClick([JJ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final isFastClick([JJ)Z
    .locals 4

    const-string p0, "hit"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    array-length p0, p1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    array-length p0, p1

    sub-int/2addr p0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, p1, p0

    .line 19
    aget-wide p0, p1, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    cmp-long p0, p0, v2

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final readSimOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "phone"

    .line 12
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 13
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getSimOperatorName(...)"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    sget p0, Ltech/rabbit/r1launcher/R$string;->text_t_mobile:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    goto :goto_0

    :goto_2
    return-object p0
.end method
