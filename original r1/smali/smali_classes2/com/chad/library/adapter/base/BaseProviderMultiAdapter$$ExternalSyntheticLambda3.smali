.class public final synthetic Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic f$1:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    invoke-static {v0, p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->$r8$lambda$RH8YiKMISZS1SkKyFWT2HR198J8(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
