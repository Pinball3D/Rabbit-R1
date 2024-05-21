.class final Lio/sentry/JsonObjectDeserializer$TokenMap;
.super Ljava/lang/Object;
.source "JsonObjectDeserializer.java"

# interfaces
.implements Lio/sentry/JsonObjectDeserializer$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/JsonObjectDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TokenMap"
.end annotation


# instance fields
.field final value:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/JsonObjectDeserializer$TokenMap;->value:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/JsonObjectDeserializer$1;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer$TokenMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenMap;->value:Ljava/util/HashMap;

    return-object p0
.end method
