.class public Ltech/rabbit/r1launcher/utils/OkHttpUtil;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"


# static fields
.field private static deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/utils/OkHttpUtil;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static builder()Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .line 17
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 18
    new-instance v1, Ltech/rabbit/r1launcher/utils/OkHttpUtil$1;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/utils/OkHttpUtil$1;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public static client()Lokhttp3/OkHttpClient;
    .locals 2

    .line 33
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-static {}, Ltech/rabbit/r1launcher/utils/OkHttpUtil;->builder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Ltech/rabbit/r1launcher/utils/OkHttpUtil;->deviceId:Ljava/lang/String;

    return-void
.end method
