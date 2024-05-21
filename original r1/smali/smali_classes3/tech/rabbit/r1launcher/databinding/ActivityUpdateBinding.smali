.class public final Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;
.super Ljava/lang/Object;
.source "ActivityUpdateBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnFinish:Landroid/widget/Button;

.field public final btnNetwork:Landroid/widget/Button;

.field public final btnUpdate:Landroid/widget/Button;

.field public final llUpdateButtons:Landroid/widget/LinearLayout;

.field public final llUpdateResult:Landroid/widget/LinearLayout;

.field public final llUpdateState:Landroid/widget/LinearLayout;

.field public final progressUpdateState:Landroid/widget/ProgressBar;

.field public final rlUpdateInfo:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvPkgUrl:Landroid/widget/TextView;

.field public final tvUpdateInfo:Landroid/widget/TextView;

.field public final tvUpdateInfoName:Landroid/widget/TextView;

.field public final tvUpdateInfoVersion:Landroid/widget/TextView;

.field public final tvUpdateName:Landroid/widget/TextView;

.field public final tvUpdateResult:Landroid/widget/TextView;

.field public final tvUpdateState:Landroid/widget/TextView;

.field public final tvUpdateVersion:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->btnFinish:Landroid/widget/Button;

    move-object v1, p3

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->btnNetwork:Landroid/widget/Button;

    move-object v1, p4

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->btnUpdate:Landroid/widget/Button;

    move-object v1, p5

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->llUpdateButtons:Landroid/widget/LinearLayout;

    move-object v1, p6

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->llUpdateResult:Landroid/widget/LinearLayout;

    move-object v1, p7

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->llUpdateState:Landroid/widget/LinearLayout;

    move-object v1, p8

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->progressUpdateState:Landroid/widget/ProgressBar;

    move-object v1, p9

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->rlUpdateInfo:Landroid/widget/RelativeLayout;

    move-object v1, p10

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->tvPkgUrl:Landroid/widget/TextView;

    move-object v1, p11

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->tvUpdateInfo:Landroid/widget/TextView;

    move-object v1, p12

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->tvUpdateInfoName:Landroid/widget/TextView;

    move-object v1, p13

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->tvUpdateInfoVersion:Landroid/widget/TextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->tvUpdateName:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->tvUpdateResult:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->tvUpdateState:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->tvUpdateVersion:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 127
    sget v1, Ltech/rabbit/r1launcher/R$id;->btn_finish:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 133
    sget v1, Ltech/rabbit/r1launcher/R$id;->btn_network:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 139
    sget v1, Ltech/rabbit/r1launcher/R$id;->btn_update:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 145
    sget v1, Ltech/rabbit/r1launcher/R$id;->ll_update_buttons:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 151
    sget v1, Ltech/rabbit/r1launcher/R$id;->ll_update_result:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 157
    sget v1, Ltech/rabbit/r1launcher/R$id;->ll_update_state:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 163
    sget v1, Ltech/rabbit/r1launcher/R$id;->progress_update_state:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ProgressBar;

    if-eqz v11, :cond_0

    .line 169
    sget v1, Ltech/rabbit/r1launcher/R$id;->rl_update_info:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_0

    .line 175
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_pkg_url:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 181
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_update_info:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 187
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_update_info_name:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 193
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_update_info_version:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 199
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_update_name:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 205
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_update_result:I

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 211
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_update_state:I

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 217
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_update_version:I

    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 223
    new-instance v1, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v20}, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 228
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;
    .locals 2

    .line 114
    sget v0, Ltech/rabbit/r1launcher/R$layout;->activity_update:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ActivityUpdateBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
