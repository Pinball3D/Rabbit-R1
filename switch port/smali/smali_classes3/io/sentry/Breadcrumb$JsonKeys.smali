.class public final Lio/sentry/Breadcrumb$JsonKeys;
.super Ljava/lang/Object;
.source "Breadcrumb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Breadcrumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
