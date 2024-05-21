.class public final Lio/sentry/protocol/App;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/App$JsonKeys;,
        Lio/sentry/protocol/App$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "app"


# instance fields
.field private appBuild:Ljava/lang/String;

.field private appIdentifier:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appStartTime:Ljava/util/Date;

.field private appVersion:Ljava/lang/String;

.field private buildType:Ljava/lang/String;

.field private deviceAppHash:Ljava/lang/String;

.field private inForeground:Ljava/lang/Boolean;

.field private permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private viewNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/App;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    .line 58
    iget-object v0, p1, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    .line 62
    iget-object v0, p1, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    .line 63
    iget-object v0, p1, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newArrayList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    .line 64
    iget-object p1, p1, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/App;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/App;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/App;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    check-cast p1, Lio/sentry/protocol/App;

    iget-object v2, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    .line 159
    iget-object v3, p1, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    iget-object v3, p1, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    .line 160
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    .line 161
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    .line 162
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    .line 163
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    .line 164
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    .line 165
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    iget-object v3, p1, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    .line 166
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    iget-object v3, p1, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    .line 167
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    iget-object p1, p1, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    .line 168
    invoke-static {p0, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAppBuild()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    return-object p0
.end method

.method public getAppIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppStartTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceAppHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    return-object p0
.end method

.method public getInForeground()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getPermissions()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    return-object p0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getViewNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 10

    iget-object v0, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    iget-object v2, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    iget-object v5, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    iget-object v6, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    iget-object v7, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    iget-object v8, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    iget-object v9, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    .line 173
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "app_identifier"

    .line 217
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    const-string v0, "app_start_time"

    .line 220
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "device_app_hash"

    .line 223
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "build_type"

    .line 226
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "app_name"

    .line 229
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "app_version"

    .line 232
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "app_build"

    .line 235
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 237
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "permissions"

    .line 238
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    const-string v0, "in_foreground"

    .line 241
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    if-eqz v0, :cond_9

    const-string v0, "view_names"

    .line 244
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 247
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    .line 248
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 249
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 252
    :cond_a
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setAppBuild(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    return-void
.end method

.method public setAppIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppStartTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setBuildType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    return-void
.end method

.method public setDeviceAppHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    return-void
.end method

.method public setInForeground(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    return-void
.end method

.method public setPermissions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setViewNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    return-void
.end method
