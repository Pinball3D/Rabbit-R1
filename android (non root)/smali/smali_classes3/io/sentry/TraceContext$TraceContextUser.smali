.class final Lio/sentry/TraceContext$TraceContextUser;
.super Ljava/lang/Object;
.source "TraceContext.java"

# interfaces
.implements Lio/sentry/JsonUnknown;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/TraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TraceContextUser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/TraceContext$TraceContextUser$Deserializer;,
        Lio/sentry/TraceContext$TraceContextUser$JsonKeys;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private segment:Ljava/lang/String;

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


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/TraceContext$TraceContextUser;->id:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/TraceContext$TraceContextUser;->segment:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TraceContext$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lio/sentry/TraceContext$TraceContextUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/TraceContext$TraceContextUser;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getSegment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/TraceContext$TraceContextUser;->segment:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/TraceContext$TraceContextUser;->unknown:Ljava/util/Map;

    return-object p0
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

    iput-object p1, p0, Lio/sentry/TraceContext$TraceContextUser;->unknown:Ljava/util/Map;

    return-void
.end method
