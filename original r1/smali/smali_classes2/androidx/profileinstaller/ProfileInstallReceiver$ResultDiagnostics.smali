.class Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;
.super Ljava/lang/Object;
.source "ProfileInstallReceiver.java"

# interfaces
.implements Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileInstallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultDiagnostics"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/profileinstaller/ProfileInstallReceiver;


# direct methods
.method constructor <init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V
    .locals 0

    iput-object p1, p0, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;->this$0:Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiagnosticReceived(ILjava/lang/Object;)V
    .locals 0

    .line 160
    sget-object p0, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {p0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onDiagnosticReceived(ILjava/lang/Object;)V

    return-void
.end method

.method public onResultReceived(ILjava/lang/Object;)V
    .locals 1

    .line 165
    sget-object v0, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;->this$0:Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 166
    invoke-virtual {p0, p1}, Landroidx/profileinstaller/ProfileInstallReceiver;->setResultCode(I)V

    return-void
.end method
