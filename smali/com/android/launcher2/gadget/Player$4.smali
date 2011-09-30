.class Lcom/android/launcher2/gadget/Player$4;
.super Landroid/content/BroadcastReceiver;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/gadget/Player;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gadget/Player;


# direct methods
.method constructor <init>(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$4;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1186
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1187
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$4;->this$0:Lcom/android/launcher2/gadget/Player;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/gadget/Player;->access$1700(Lcom/android/launcher2/gadget/Player;Ljava/lang/String;)Z

    .line 1188
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$4;->this$0:Lcom/android/launcher2/gadget/Player;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher2/gadget/Player;->access$4902(Lcom/android/launcher2/gadget/Player;Z)Z

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$4;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player;->access$4900(Lcom/android/launcher2/gadget/Player;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.init_gadget"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v0, initntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$4;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player;->access$5000(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
