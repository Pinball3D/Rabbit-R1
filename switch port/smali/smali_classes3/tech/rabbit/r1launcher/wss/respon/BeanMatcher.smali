.class public Ltech/rabbit/r1launcher/wss/respon/BeanMatcher;
.super Ljava/lang/Object;
.source "BeanMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static match(Ljava/lang/String;)Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;
    .locals 9

    const-string v0, "message"

    const-string v1, "debugLog"

    const-string v2, "initialize"

    const-string v3, "spotify"

    const-string v4, "global"

    .line 9
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "clientIp"

    const-string v7, "currentTime"

    if-eqz p0, :cond_0

    .line 12
    :try_start_1
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 14
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 18
    sget-object p0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->INDICATING_SIGN_IN_SUCCESS:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    return-object p0

    .line 23
    :cond_0
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 24
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "playerReady"

    .line 26
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    sget-object p0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->PLAYER_READY:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    return-object p0

    .line 28
    :cond_1
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 29
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 30
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    sget-object p0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->INDICATING_SIGN_IN_SUCCESS:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    return-object p0

    .line 33
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Player is already in connect state"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 37
    sget-object p0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->PLAYER_ALREADY_IN_CONNECT_STATE:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    return-object p0

    :cond_3
    const-string v0, "playerStatus"

    .line 40
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 41
    sget-object p0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->SPOTIFY_PLAYER_STATUS:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    :cond_4
    sget-object p0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->UNKNOWN:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    return-object p0
.end method
