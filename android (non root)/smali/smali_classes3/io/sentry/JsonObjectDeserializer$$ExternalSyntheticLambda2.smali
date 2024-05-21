.class public final synthetic Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/JsonObjectDeserializer$NextValue;


# instance fields
.field public final synthetic f$0:Lio/sentry/JsonObjectReader;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/JsonObjectReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda2;->f$0:Lio/sentry/JsonObjectReader;

    return-void
.end method


# virtual methods
.method public final nextValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda2;->f$0:Lio/sentry/JsonObjectReader;

    invoke-static {p0}, Lio/sentry/JsonObjectDeserializer;->lambda$parse$2(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
