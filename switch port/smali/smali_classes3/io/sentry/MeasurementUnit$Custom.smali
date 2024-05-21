.class public final Lio/sentry/MeasurementUnit$Custom;
.super Ljava/lang/Object;
.source "MeasurementUnit.java"

# interfaces
.implements Lio/sentry/MeasurementUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MeasurementUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Custom"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/MeasurementUnit$Custom;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lio/sentry/MeasurementUnit$Custom;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/MeasurementUnit$Custom;->name:Ljava/lang/String;

    return-object p0
.end method
