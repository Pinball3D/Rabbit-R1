.class public final Ltech/rabbit/r1launcher/constant/EventInterceptor;
.super Ljava/lang/Object;
.source "EventInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/constant/EventInterceptor;",
        "",
        "()V",
        "needIntercept",
        "",
        "getNeedIntercept",
        "()Z",
        "setNeedIntercept",
        "(Z)V",
        "transaltor",
        "getTransaltor",
        "setTransaltor",
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

.field public static final INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

.field private static needIntercept:Z

.field private static transaltor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/constant/EventInterceptor;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/constant/EventInterceptor;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/constant/EventInterceptor;->INSTANCE:Ltech/rabbit/r1launcher/constant/EventInterceptor;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/constant/EventInterceptor;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNeedIntercept()Z
    .locals 0

    sget-boolean p0, Ltech/rabbit/r1launcher/constant/EventInterceptor;->needIntercept:Z

    return p0
.end method

.method public final getTransaltor()Z
    .locals 0

    sget-boolean p0, Ltech/rabbit/r1launcher/constant/EventInterceptor;->transaltor:Z

    return p0
.end method

.method public final setNeedIntercept(Z)V
    .locals 0

    sput-boolean p1, Ltech/rabbit/r1launcher/constant/EventInterceptor;->needIntercept:Z

    return-void
.end method

.method public final setTransaltor(Z)V
    .locals 0

    sput-boolean p1, Ltech/rabbit/r1launcher/constant/EventInterceptor;->transaltor:Z

    return-void
.end method
