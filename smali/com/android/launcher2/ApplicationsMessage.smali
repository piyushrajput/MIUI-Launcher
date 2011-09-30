.class public Lcom/android/launcher2/ApplicationsMessage;
.super Ljava/lang/Object;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;,
        Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final mLoadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/ApplicationsMessage$IconMessage;",
            ">;"
        }
    .end annotation
.end field

.field mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    .line 52
    iput-object p1, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/ApplicationsMessage;->updateMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, updateMessageFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    invoke-direct {v1, p0}, Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;-><init>(Lcom/android/launcher2/ApplicationsMessage;)V

    iput-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    .line 59
    iget-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method private updateMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 4
    .parameter "componentName"
    .parameter "message"
    .parameter "backgroundSrcPackage"
    .parameter "backgroundId"

    .prologue
    .line 119
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationsMessage$IconMessage;

    .line 121
    .local v0, im:Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 124
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lcom/android/launcher2/ApplicationsMessage$IconMessage;->setMessage(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 125
    check-cast v0, Lcom/android/launcher2/ShortcutIcon;

    .end local v0           #im:Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    .line 126
    .local v2, si:Lcom/android/launcher2/ShortcutInfo;
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v1

    .line 127
    .local v1, lc:Lcom/android/launcher2/Launcher;
    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/ApplicationsMessage;->updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V

    .line 129
    .end local v1           #lc:Lcom/android/launcher2/Launcher;
    .end local v2           #si:Lcom/android/launcher2/ShortcutInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public addApplication(Lcom/android/launcher2/ShortcutIcon;Landroid/content/ComponentName;)V
    .locals 3
    .parameter "icon"
    .parameter "componentName"

    .prologue
    .line 71
    if-eqz p2, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationsMessage$IconMessage;

    invoke-interface {v0}, Lcom/android/launcher2/ApplicationsMessage$IconMessage;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationsMessage$IconMessage;

    invoke-interface {v0}, Lcom/android/launcher2/ApplicationsMessage$IconMessage;->getBackgroundId()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/launcher2/ShortcutIcon;->setMessage(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    .line 137
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 138
    return-void
.end method

.method public onLaunchApplication(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 132
    return-void
.end method

.method public removeApplication(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, cl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 85
    .local v0, c:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v0           #c:Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 90
    .restart local v0       #c:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    .end local v0           #c:Landroid/content/ComponentName;
    :cond_2
    return-void
.end method

.method public requareUpdateMessages()V
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    if-nez v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/launcher2/ApplicationsMessage;->initialize()V

    .line 66
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, updateCount:I
    iget-object v6, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    .line 99
    .local v1, fi:Lcom/android/launcher2/FolderIcon;
    if-nez v1, :cond_1

    .line 115
    .end local v1           #fi:Lcom/android/launcher2/FolderIcon;
    .end local v5           #updateCount:I
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v1       #fi:Lcom/android/launcher2/FolderIcon;
    .restart local v5       #updateCount:I
    :cond_1
    const/4 v4, 0x0

    .line 103
    .local v4, si:Lcom/android/launcher2/ShortcutInfo;
    iget-object v6, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationsMessage$IconMessage;

    .line 104
    .local v3, imc:Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    move-object v0, v3

    check-cast v0, Lcom/android/launcher2/ShortcutIcon;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/launcher2/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #si:Lcom/android/launcher2/ShortcutInfo;
    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    .line 105
    .restart local v4       #si:Lcom/android/launcher2/ShortcutInfo;
    iget-wide v6, v4, Lcom/android/launcher2/ShortcutInfo;->container:J

    iget-wide v8, p1, Lcom/android/launcher2/FolderInfo;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    invoke-interface {v3}, Lcom/android/launcher2/ApplicationsMessage$IconMessage;->isEmptyMessage()Z

    move-result v6

    if-nez v6, :cond_2

    .line 106
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 109
    .end local v3           #imc:Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    :cond_3
    if-nez v5, :cond_4

    .line 110
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher2/FolderIcon;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/launcher2/FolderIcon;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
