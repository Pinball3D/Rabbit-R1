.class public final synthetic Landroidx/lifecycle/DispatchQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/DispatchQueue;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/DispatchQueue$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/DispatchQueue;

    iput-object p2, p0, Landroidx/lifecycle/DispatchQueue$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/DispatchQueue$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/DispatchQueue;

    iget-object p0, p0, Landroidx/lifecycle/DispatchQueue$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/lifecycle/DispatchQueue;->$r8$lambda$1ME-FmJywCV2uxhp8ajM5a9C_oI(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    return-void
.end method
