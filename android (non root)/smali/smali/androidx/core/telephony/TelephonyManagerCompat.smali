.class public Landroidx/core/telephony/TelephonyManagerCompat;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/TelephonyManagerCompat$Api26Impl;,
        Landroidx/core/telephony/TelephonyManagerCompat$Api23Impl;,
        Landroidx/core/telephony/TelephonyManagerCompat$Api30Impl;
    }
.end annotation


# static fields
.field private static sGetDeviceIdMethod:Ljava/lang/reflect/Method;

.field private static sGetSubIdMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat$Api26Impl;->getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSubscriptionId(Landroid/telephony/TelephonyManager;)I
    .locals 0

    .line 113
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat$Api30Impl;->getSubscriptionId(Landroid/telephony/TelephonyManager;)I

    move-result p0

    return p0
.end method
