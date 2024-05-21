.class Landroidx/appcompat/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 996
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 997
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onSearchClicked()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 998
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 999
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 1000
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 1001
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 1002
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 1003
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onVoiceClicked()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 1004
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 1005
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    :cond_4
    :goto_0
    return-void
.end method
