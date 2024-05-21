.class public abstract Lcom/google/common/collect/ForwardingObject;
.super Ljava/lang/Object;
.source "ForwardingObject.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingObject;->delegate()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
