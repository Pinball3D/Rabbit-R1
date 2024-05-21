.class final Lio/sentry/JsonObjectDeserializer$TokenName;
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
    name = "TokenName"
.end annotation


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/JsonObjectDeserializer$TokenName;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenName;->value:Ljava/lang/String;

    return-object p0
.end method
