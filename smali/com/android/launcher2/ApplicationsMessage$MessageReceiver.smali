.class Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ApplicationsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ApplicationsMessage;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ApplicationsMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;->this$0:Lcom/android/launcher2/ApplicationsMessage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    :try_start_0
    const-string v2, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;->this$0:Lcom/android/launcher2/ApplicationsMessage;

    const-string v3, "android.intent.extra.update_application_flatten_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    const-string v4, "android.intent.extra.update_application_message"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.update_application_message_background_package"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.extra.update_application_message_background"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/launcher2/ApplicationsMessage;->access$000(Lcom/android/launcher2/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 46
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v2, "ApplicationsMessage"

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
