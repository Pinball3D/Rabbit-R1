.class Landroidx/fragment/app/Fragment$8;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Ljava/lang/Void;",
        "Landroidx/activity/result/ActivityResultRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/Fragment;

.field final synthetic val$registry:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/fragment/app/Fragment$8;->this$0:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$8;->val$registry:Landroidx/activity/result/ActivityResultRegistry;

    .line 3589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Landroidx/activity/result/ActivityResultRegistry;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/Fragment$8;->val$registry:Landroidx/activity/result/ActivityResultRegistry;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3589
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment$8;->apply(Ljava/lang/Void;)Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p0

    return-object p0
.end method
