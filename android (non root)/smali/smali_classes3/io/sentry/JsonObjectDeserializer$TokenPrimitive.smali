.class final Lio/sentry/JsonObjectDeserializer$TokenPrimitive;
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
    name = "TokenPrimitive"
.end annotation


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/JsonObjectDeserializer$TokenPrimitive;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$TokenPrimitive;->value:Ljava/lang/Object;

    return-object p0
.end method
