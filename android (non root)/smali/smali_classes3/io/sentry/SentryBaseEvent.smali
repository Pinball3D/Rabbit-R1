.class public abstract Lio/sentry/SentryBaseEvent;
.super Ljava/lang/Object;
.source "SentryBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryBaseEvent$Deserializer;,
        Lio/sentry/SentryBaseEvent$Serializer;,
        Lio/sentry/SentryBaseEvent$JsonKeys;
    }
.end annotation


# static fields
.field public static final DEFAULT_PLATFORM:Ljava/lang/String; = "java"


# instance fields
.field private breadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation
.end field

.field private final contexts:Lio/sentry/protocol/Contexts;

.field private debugMeta:Lio/sentry/protocol/DebugMeta;

.field private dist:Ljava/lang/String;

.field private environment:Ljava/lang/String;

.field private eventId:Lio/sentry/protocol/SentryId;

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field private release:Ljava/lang/String;

.field private request:Lio/sentry/protocol/Request;

.field private sdk:Lio/sentry/protocol/SdkVersion;

.field private serverName:Ljava/lang/String;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected transient throwable:Ljava/lang/Throwable;

.field private user:Lio/sentry/protocol/User;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 125
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/SentryBaseEvent;-><init>(Lio/sentry/protocol/SentryId;)V

    return-void
.end method

.method protected constructor <init>(Lio/sentry/protocol/SentryId;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryBaseEvent;->contexts:Lio/sentry/protocol/Contexts;

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->eventId:Lio/sentry/protocol/SentryId;

    return-void
.end method

.method static synthetic access$000(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->eventId:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method static synthetic access$002(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->eventId:Lio/sentry/protocol/SentryId;

    return-object p1
.end method

.method static synthetic access$100(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Contexts;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->contexts:Lio/sentry/protocol/Contexts;

    return-object p0
.end method

.method static synthetic access$1000(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->dist:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->dist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lio/sentry/SentryBaseEvent;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->breadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1102(Lio/sentry/SentryBaseEvent;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->breadcrumbs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/DebugMeta;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->debugMeta:Lio/sentry/protocol/DebugMeta;

    return-object p0
.end method

.method static synthetic access$1202(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/DebugMeta;)Lio/sentry/protocol/DebugMeta;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->debugMeta:Lio/sentry/protocol/DebugMeta;

    return-object p1
.end method

.method static synthetic access$1300(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->extra:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1302(Lio/sentry/SentryBaseEvent;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->extra:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$200(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SdkVersion;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->sdk:Lio/sentry/protocol/SdkVersion;

    return-object p0
.end method

.method static synthetic access$202(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/SdkVersion;)Lio/sentry/protocol/SdkVersion;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->sdk:Lio/sentry/protocol/SdkVersion;

    return-object p1
.end method

.method static synthetic access$300(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Request;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->request:Lio/sentry/protocol/Request;

    return-object p0
.end method

.method static synthetic access$302(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/Request;)Lio/sentry/protocol/Request;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->request:Lio/sentry/protocol/Request;

    return-object p1
.end method

.method static synthetic access$400(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$402(Lio/sentry/SentryBaseEvent;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->release:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->release:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->environment:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->environment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->platform:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->platform:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/User;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->user:Lio/sentry/protocol/User;

    return-object p0
.end method

.method static synthetic access$802(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/User;)Lio/sentry/protocol/User;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->user:Lio/sentry/protocol/User;

    return-object p1
.end method

.method static synthetic access$900(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->serverName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->serverName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->breadcrumbs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryBaseEvent;->breadcrumbs:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->breadcrumbs:Ljava/util/List;

    .line 281
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .line 322
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, p1}, Lio/sentry/Breadcrumb;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/sentry/SentryBaseEvent;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    return-void
.end method

.method public getBreadcrumbs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->breadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->contexts:Lio/sentry/protocol/Contexts;

    return-object p0
.end method

.method public getDebugMeta()Lio/sentry/protocol/DebugMeta;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->debugMeta:Lio/sentry/protocol/DebugMeta;

    return-object p0
.end method

.method public getDist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->dist:Ljava/lang/String;

    return-object p0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->environment:Ljava/lang/String;

    return-object p0
.end method

.method public getEventId()Lio/sentry/protocol/SentryId;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->eventId:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->extra:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 316
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtras()Ljava/util/Map;
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

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->extra:Ljava/util/Map;

    return-object p0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->release:Ljava/lang/String;

    return-object p0
.end method

.method public getRequest()Lio/sentry/protocol/Request;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->request:Lio/sentry/protocol/Request;

    return-object p0
.end method

.method public getSdk()Lio/sentry/protocol/SdkVersion;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->sdk:Lio/sentry/protocol/SdkVersion;

    return-object p0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->serverName:Ljava/lang/String;

    return-object p0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 209
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTags()Ljava/util/Map;
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

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->throwable:Ljava/lang/Throwable;

    .line 164
    instance-of v0, p0, Lio/sentry/exception/ExceptionMechanismException;

    if-eqz v0, :cond_0

    .line 165
    check-cast p0, Lio/sentry/exception/ExceptionMechanismException;

    invoke-virtual {p0}, Lio/sentry/exception/ExceptionMechanismException;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getThrowableMechanism()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getUser()Lio/sentry/protocol/User;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->user:Lio/sentry/protocol/User;

    return-object p0
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->extra:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 310
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 203
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setBreadcrumbs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/Breadcrumb;",
            ">;)V"
        }
    .end annotation

    .line 274
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newArrayList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->breadcrumbs:Ljava/util/List;

    return-void
.end method

.method public setDebugMeta(Lio/sentry/protocol/DebugMeta;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->debugMeta:Lio/sentry/protocol/DebugMeta;

    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->dist:Ljava/lang/String;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->environment:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Lio/sentry/protocol/SentryId;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->eventId:Lio/sentry/protocol/SentryId;

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->extra:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryBaseEvent;->extra:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->extra:Ljava/util/Map;

    .line 305
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
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

    .line 298
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->extra:Ljava/util/Map;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->platform:Ljava/lang/String;

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->release:Ljava/lang/String;

    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->request:Lio/sentry/protocol/Request;

    return-void
.end method

.method public setSdk(Lio/sentry/protocol/SdkVersion;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->sdk:Lio/sentry/protocol/SdkVersion;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    .line 218
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
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

    .line 198
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->tags:Ljava/util/Map;

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->user:Lio/sentry/protocol/User;

    return-void
.end method
