.class public final synthetic LTaskOperationDistributor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$Reply;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTaskOperationDistributor$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, LTaskOperationDistributor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final reply(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LTaskOperationDistributor$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, LTaskOperationDistributor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, LTaskOperationDistributor;->$r8$lambda$v2YNFwm9I31pTDySraFANcpVqps(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
