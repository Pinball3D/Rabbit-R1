.class public final Landroidx/core/telephony/mbms/MbmsHelper;
.super Ljava/lang/Object;
.source "MbmsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/mbms/MbmsHelper$Api28Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestNameForService(Landroid/content/Context;Landroid/telephony/mbms/ServiceInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 56
    invoke-static {p0, p1}, Landroidx/core/telephony/mbms/MbmsHelper$Api28Impl;->getBestNameForService(Landroid/content/Context;Landroid/telephony/mbms/ServiceInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
