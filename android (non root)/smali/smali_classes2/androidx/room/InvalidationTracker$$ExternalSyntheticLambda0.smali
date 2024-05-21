.class public final synthetic Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/room/InvalidationTracker;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/InvalidationTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;->f$0:Landroidx/room/InvalidationTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;->f$0:Landroidx/room/InvalidationTracker;

    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->onAutoCloseCallback$room_runtime_release()V

    return-void
.end method
