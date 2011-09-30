.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "data"

    .prologue
    .line 30
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    .line 35
    .local v2, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v3

    .line 36
    .local v3, launcher:Lcom/android/launcher2/Launcher;
    move-object v4, p2

    .line 37
    .local v4, intentData:Landroid/content/Intent;
    move-object v5, p1

    .line 38
    .local v5, runningContext:Landroid/content/Context;
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    new-instance v0, Lcom/android/launcher2/InstallShortcutReceiver$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/InstallShortcutReceiver$1;-><init>(Lcom/android/launcher2/InstallShortcutReceiver;Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/Launcher;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
