.class final Lio/sentry/JsonObjectDeserializer$TokenArray;
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
    name = "TokenArray"
.end annotation


# instance fields
.field final value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/JsonObjectDeserializer$TokenArray;->value:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/JsonObjectDeserializer$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer$TokenArray;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenArray;->value:Ljava/util/ArrayList;

    return-object p0
.end method
