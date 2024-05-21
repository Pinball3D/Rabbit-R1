.class public final synthetic LUpdateHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUpdateHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, LUpdateHelper$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LUpdateHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, LUpdateHelper$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, LUpdateHelper;->$r8$lambda$m0scCyt_YAqtVj2zejq23_9ehnQ(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
