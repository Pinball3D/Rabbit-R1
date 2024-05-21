.class public interface abstract Lio/sentry/MeasurementUnit;
.super Ljava/lang/Object;
.source "MeasurementUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/MeasurementUnit$Custom;,
        Lio/sentry/MeasurementUnit$Fraction;,
        Lio/sentry/MeasurementUnit$Information;,
        Lio/sentry/MeasurementUnit$Duration;
    }
.end annotation


# static fields
.field public static final NONE:Ljava/lang/String; = "none"


# virtual methods
.method public abstract apiName()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method
