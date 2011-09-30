.class public Lcom/android/launcher2/LauncherModel$Loader;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Loader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    }
.end annotation


# instance fields
.field final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/gadget/GadgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mLoadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;)V
    .locals 1
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    .line 610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    .line 611
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    .line 612
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedUris:Ljava/util/HashSet;

    .line 613
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedPackages:Ljava/util/HashSet;

    .line 619
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel$Loader;->onRemoveItem(Lcom/android/launcher2/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel$Loader;->onRemoveItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel$Loader;->onLoadShortcut(Lcom/android/launcher2/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel$Loader;->onLoadShortcuts(Ljava/util/ArrayList;)V

    return-void
.end method

.method private onLoadShortcut(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1306
    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedUris:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1308
    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedPackages:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1312
    :cond_0
    return-void
.end method

.method private onLoadShortcuts(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1300
    .local p1, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .line 1301
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherModel$Loader;->onLoadShortcut(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_0

    .line 1303
    .end local v1           #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    return-void
.end method

.method private onRemoveItem(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1321
    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedPackages:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedUris:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1327
    :cond_1
    return-void
.end method

.method private onRemoveItems(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1315
    .local p1, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 1316
    .local v1, info:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedPackages:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1318
    .end local v1           #info:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher.Model"

    .line 1330
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mItems size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$Loader;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->dumpState()V

    .line 1336
    :goto_0
    return-void

    .line 1334
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v0, "mLoader.mLoaderThread=null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    const-string v1, "Launcher.Model"

    .line 622
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 623
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 625
    const-string v2, "Launcher.Model"

    const-string v3, "already has a waitting thread,return."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    monitor-exit v1

    .line 647
    :goto_0
    return-void

    .line 630
    :cond_0
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLoader isLaunching="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 635
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    .line 636
    .local v0, oldThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    const/4 p2, 0x1

    .line 641
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->stopLocked()V

    .line 643
    :cond_2
    new-instance v2, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;-><init>(Lcom/android/launcher2/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    .line 644
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->start()V

    .line 646
    .end local v0           #oldThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->stopLocked()V

    .line 654
    :cond_0
    monitor-exit v0

    .line 655
    return-void

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
