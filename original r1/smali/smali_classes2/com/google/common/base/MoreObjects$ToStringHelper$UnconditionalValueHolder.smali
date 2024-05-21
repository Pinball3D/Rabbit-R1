.class final Lcom/google/common/base/MoreObjects$ToStringHelper$UnconditionalValueHolder;
.super Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects$ToStringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnconditionalValueHolder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 455
    invoke-direct {p0, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/MoreObjects$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/MoreObjects$1;)V
    .locals 0

    .line 455
    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper$UnconditionalValueHolder;-><init>()V

    return-void
.end method
