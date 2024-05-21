.class public final synthetic Lio/flutter/embedding/android/FlutterView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/view/textservice/SpellCheckerInfo;

    invoke-static {p1}, Lio/flutter/embedding/android/FlutterView;->lambda$sendUserSettingsToFlutter$0(Landroid/view/textservice/SpellCheckerInfo;)Z

    move-result p0

    return p0
.end method
