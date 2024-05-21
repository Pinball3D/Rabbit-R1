.class public final synthetic Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ltech/rabbit/r1launcher/widget/SettingSwitch;


# direct methods
.method public synthetic constructor <init>(Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Ltech/rabbit/r1launcher/widget/SettingSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda0;->f$0:Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda0;->f$2:Ltech/rabbit/r1launcher/widget/SettingSwitch;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda0;->f$0:Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda0;->f$2:Ltech/rabbit/r1launcher/widget/SettingSwitch;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->$r8$lambda$qFUdMSigYPZO804BU_JOQ6pV-z8(Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Ltech/rabbit/r1launcher/widget/SettingSwitch;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
