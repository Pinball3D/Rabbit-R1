.class Ltech/rabbit/r1launcher/utils/OkHttpUtil$1;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/utils/OkHttpUtil;->builder()Lokhttp3/OkHttpClient$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p0

    const-string v0, "deviceId"

    .line 24
    invoke-static {}, Ltech/rabbit/r1launcher/utils/OkHttpUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 26
    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
