.class public final Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;
.super Ljava/lang/Object;
.source "FragmentChangePasscodeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flContinueContainer:Landroid/widget/FrameLayout;

.field public final flSuccessContainer:Landroid/widget/FrameLayout;

.field public final llBackContainer:Landroid/widget/LinearLayout;

.field public final llTipContainer:Landroid/widget/LinearLayout;

.field public final npvPicker:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvBackTitle:Landroid/widget/TextView;

.field public final tvConfirmPasscode:Landroid/widget/TextView;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvRetry:Landroid/widget/TextView;

.field public final tvSuccess:Landroid/widget/TextView;

.field public final tvSuccessTip:Landroid/widget/TextView;

.field public final tvTip:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvToFinish:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->flContinueContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->flSuccessContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->llBackContainer:Landroid/widget/LinearLayout;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->llTipContainer:Landroid/widget/LinearLayout;

    iput-object p6, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->npvPicker:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    iput-object p7, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->tvBackTitle:Landroid/widget/TextView;

    iput-object p8, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->tvConfirmPasscode:Landroid/widget/TextView;

    iput-object p9, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->tvContinue:Landroid/widget/TextView;

    iput-object p10, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->tvRetry:Landroid/widget/TextView;

    iput-object p11, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->tvSuccess:Landroid/widget/TextView;

    iput-object p12, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->tvSuccessTip:Landroid/widget/TextView;

    iput-object p13, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->tvTip:Landroid/widget/TextView;

    iput-object p14, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p15, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->tvToFinish:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 117
    sget v1, Ltech/rabbit/r1launcher/R$id;->fl_continue_container:I

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 123
    sget v1, Ltech/rabbit/r1launcher/R$id;->fl_success_container:I

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 129
    sget v1, Ltech/rabbit/r1launcher/R$id;->ll_back_container:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 135
    sget v1, Ltech/rabbit/r1launcher/R$id;->ll_tip_container:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 141
    sget v1, Ltech/rabbit/r1launcher/R$id;->npv_picker:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-eqz v9, :cond_0

    .line 147
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_back_title:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 153
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_confirm_passcode:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 159
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 165
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_retry:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 171
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_success:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 177
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_success_tip:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 183
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 189
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_title:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 195
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_to_finish:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 201
    new-instance v1, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 206
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;
    .locals 2

    .line 104
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_change_passcode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentChangePasscodeBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
