.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$Loader;,
        Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field private static sDelayedUpdateBuffer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppsList:Lcom/android/launcher2/AllAppsList;

.field private final mAllAppsListLock:Ljava/lang/Object;

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mLoader:Lcom/android/launcher2/LauncherModel$Loader;

.field private final mLock:Ljava/lang/Object;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/IconCache;)V
    .locals 1
    .parameter "app"
    .parameter "iconCache"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 75
    new-instance v0, Lcom/android/launcher2/LauncherModel$Loader;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$Loader;-><init>(Lcom/android/launcher2/LauncherModel;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/launcher2/AllAppsList;

    invoke-direct {v0}, Lcom/android/launcher2/AllAppsList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    .line 102
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 103
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 104
    return-void
.end method

.method static synthetic access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 67
    invoke-static/range {p0 .. p5}, Lcom/android/launcher2/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$Loader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 248
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v9

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJIIZ)Z

    move-result p0

    .end local p0
    return p0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJIIZ)Z
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "reload"

    .prologue
    .line 256
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 257
    iput-wide p4, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 258
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 259
    iput p7, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 261
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local p2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, p2}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 267
    const-string p0, "Launcher.Model"

    .end local p0
    const-string p3, "Adding item to database (%d, %d) of screen %d"

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    .end local p4
    const/4 p5, 0x0

    iget p6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .end local p6
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p4, p5

    const/4 p5, 0x1

    iget p6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p4, p5

    const/4 p5, 0x2

    iget-wide p6, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    aput-object p6, p4, p5

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object p0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 273
    .local p0, result:Landroid/net/Uri;
    if-eqz p0, :cond_2

    .line 274
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .end local p0           #result:Landroid/net/Uri;
    const/4 p2, 0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local p2           #values:Landroid/content/ContentValues;
    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long p2, p0

    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    .line 275
    if-eqz p8, :cond_1

    .line 276
    iget-wide p2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {p2, p3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 277
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_1

    .line 279
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 280
    invoke-virtual {p1, p0}, Lcom/android/launcher2/ItemInfo;->load(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 287
    .end local p0           #c:Landroid/database/Cursor;
    :cond_1
    const/4 p0, 0x1

    .line 290
    :goto_0
    return p0

    .line 283
    .restart local p0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception p1

    .end local p1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 290
    .local p0, result:Landroid/net/Uri;
    .restart local p1
    .restart local p2       #values:Landroid/content/ContentValues;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 116
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 118
    invoke-static/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    move-result v0

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z
    .locals 11
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 362
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "Launcher.Model"

    const-string v4, "Deleting item from database (%d, %d) of screen %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    iget v6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x2

    iget-wide v7, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :try_start_0
    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    instance-of v3, p1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    iget-object v2, v3, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    .line 371
    .local v2, loader:Lcom/android/launcher2/LauncherModel$Loader;
    monitor-enter v2

    .line 372
    :try_start_1
    check-cast p1, Lcom/android/launcher2/ShortcutInfo;

    .end local p1
    invoke-static {v2, p1}, Lcom/android/launcher2/LauncherModel$Loader;->access$000(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/ShortcutInfo;)V

    .line 373
    monitor-exit v2

    .end local v2           #loader:Lcom/android/launcher2/LauncherModel$Loader;
    :cond_0
    move v3, v10

    .line 375
    :goto_0
    return v3

    .line 366
    .restart local p0
    .restart local p1
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/database/sqlite/SQLiteException;
    move v3, v9

    .line 367
    goto :goto_0

    .line 373
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local p0
    .end local p1
    .restart local v2       #loader:Lcom/android/launcher2/LauncherModel$Loader;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)Z
    .locals 5
    .parameter "context"
    .parameter "info"

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 384
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-wide v2, p1, Lcom/android/launcher2/UserFolderInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 385
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 386
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1618
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1619
    .local v0, folderInfo:Lcom/android/launcher2/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/LiveFolderInfo;

    if-nez v1, :cond_1

    .line 1621
    :cond_0
    new-instance v0, Lcom/android/launcher2/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher2/LiveFolderInfo;-><init>()V

    .line 1622
    .restart local v0       #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    :cond_1
    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    return-object v0
.end method

.method private static findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1603
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1604
    .local v0, folderInfo:Lcom/android/launcher2/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/UserFolderInfo;

    if-nez v1, :cond_1

    .line 1606
    :cond_0
    new-instance v0, Lcom/android/launcher2/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    .line 1607
    .restart local v0       #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    :cond_1
    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    return-object v0
.end method

.method static flashDelayedUpdateItemFlags(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 305
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    if-nez v3, :cond_0

    .line 306
    const/4 v3, 0x0

    .line 315
    :goto_0
    return v3

    .line 308
    :cond_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 309
    .local v1, info:Lcom/android/launcher2/ItemInfo;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "launchCount"

    iget v4, v1, Lcom/android/launcher2/ItemInfo;->launchCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v3, "itemFlags"

    iget v4, v1, Lcom/android/launcher2/ItemInfo;->itemFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    iget-wide v3, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {p0, v3, v4, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)Z

    goto :goto_1

    .line 314
    .end local v1           #info:Lcom/android/launcher2/ItemInfo;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 315
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static getAddItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 2
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 233
    iput-wide p3, p0, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 234
    iput p5, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 235
    iput p6, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 240
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method static getMoveItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 3
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 164
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v1, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v1, "cellY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v1, "spanX"

    iget v2, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v1, "spanY"

    iget v2, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v1, "screen"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method static getOperationForDraggingItem(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 4
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 129
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getAddItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getMoveItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_0
.end method

.method private infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher2/ShortcutInfo;
    .locals 13
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v12, 0x1

    .line 1493
    new-instance v6, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v6}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1495
    .local v6, info:Lcom/android/launcher2/ShortcutInfo;
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    iput-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1496
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1497
    const/4 v9, 0x0

    iput v9, v6, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    .line 1499
    const-string v9, "android.intent.action.VIEW_CONTACT_SHORTCUT"

    iget-object v10, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1500
    invoke-virtual {v6, p1}, Lcom/android/launcher2/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    .line 1501
    const/4 v9, 0x2

    iput v9, v6, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    .line 1533
    :goto_0
    return-object v6

    .line 1504
    :cond_0
    const-string v9, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1505
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 1507
    .local v4, icon:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    instance-of v9, v1, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_3

    .line 1508
    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    .line 1509
    iput v12, v6, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    .line 1526
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 1527
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1528
    iput-boolean v12, v6, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1530
    :cond_2
    invoke-virtual {v6, v4}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1511
    :cond_3
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1512
    .local v3, extra:Landroid/os/Parcelable;
    if-eqz v3, :cond_1

    instance-of v9, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v9, :cond_1

    .line 1514
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v9, v0

    iput-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1515
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1516
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    iget-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v9, v9, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1518
    .local v8, resources:Landroid/content/res/Resources;
    iget-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v9, v9, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1519
    .local v5, id:I
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1520
    .end local v5           #id:I
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v8           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1521
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not load shortcut icon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    .locals 10
    .parameter "context"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f02006b

    .line 1539
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1540
    .local v1, iconType:I
    packed-switch v1, :pswitch_data_0

    .line 1560
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1564
    :goto_0
    return-void

    .line 1542
    :pswitch_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1543
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1544
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1546
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1547
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1548
    .local v2, id:I
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_1
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1556
    iget-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1557
    iget-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_0

    .line 1550
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 1551
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v4, 0x0

    .line 141
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "container"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    const-string v2, "cellX"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v2, "cellY"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v2, "spanX"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v2, "spanY"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v2, "screen"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 152
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 153
    iput-wide p4, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 154
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 155
    iput p7, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 156
    const/4 v2, 0x1

    .line 159
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static updateItemFlagsInDatabaseDelayed(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 319
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    .line 322
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)Z
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p3, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 349
    :goto_0
    return v2

    :cond_0
    move v2, v5

    .line 347
    goto :goto_0

    .line 348
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/database/sqlite/SQLiteException;
    move v2, v5

    .line 349
    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    .line 330
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 334
    const-string v1, "Launcher.Model"

    const-string v2, "Update item in database (%d, %d) of screen %d under container %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-wide v1, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;)Lcom/android/launcher2/ShortcutInfo;
    .locals 12
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 1464
    if-eqz p3, :cond_0

    iget-wide v2, p3, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    move-wide v4, v2

    .line 1465
    .local v4, screenId:J
    :goto_0
    if-eqz p3, :cond_1

    iget v0, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    move v6, v0

    .line 1466
    .local v6, cellX:I
    :goto_1
    if-eqz p3, :cond_2

    iget v0, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move v7, v0

    .line 1467
    .local v7, cellY:I
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 1468
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v0, :cond_3

    move-object v0, v11

    .line 1489
    :goto_3
    return-object v0

    .line 1464
    .end local v1           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v4           #screenId:J
    .end local v6           #cellX:I
    .end local v7           #cellY:I
    :cond_0
    const-wide/16 v2, -0x1

    move-wide v4, v2

    goto :goto_0

    .restart local v4       #screenId:J
    :cond_1
    move v6, v8

    .line 1465
    goto :goto_1

    .restart local v6       #cellX:I
    :cond_2
    move v7, v8

    .line 1466
    goto :goto_2

    .line 1471
    .restart local v1       #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v7       #cellY:I
    :cond_3
    iget v0, v1, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    .line 1472
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    monitor-enter v0

    .line 1473
    :try_start_0
    iget-object v2, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 1474
    .local v9, component:Landroid/content/ComponentName;
    if-eqz v9, :cond_4

    .line 1475
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1476
    monitor-exit v0

    move-object v0, v11

    goto :goto_3

    .line 1479
    :cond_4
    iget-object v2, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    .line 1480
    .local v10, uri:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedUris:Ljava/util/HashSet;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1481
    monitor-exit v0

    move-object v0, v11

    goto :goto_3

    .line 1483
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-static {v2, v1}, Lcom/android/launcher2/LauncherModel$Loader;->access$1500(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/ShortcutInfo;)V

    .line 1485
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    .end local v9           #component:Landroid/content/ComponentName;
    .end local v10           #uri:Ljava/lang/String;
    :cond_6
    const-wide/16 v2, -0x64

    const/4 v8, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJIIZ)Z

    .line 1488
    invoke-virtual {v1, p1}, Lcom/android/launcher2/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    move-object v0, v1

    .line 1489
    goto :goto_3

    .line 1485
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1628
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader;->dumpState()V

    .line 1630
    return-void
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher2/IconCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 1455
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1457
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1459
    :goto_0
    return-object v2

    .line 1458
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1459
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 12
    .parameter "intent"
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1403
    const/4 v3, 0x0

    .line 1404
    .local v3, icon:Landroid/graphics/Bitmap;
    new-instance v5, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v5}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1405
    .local v5, info:Lcom/android/launcher2/ShortcutInfo;
    const/4 v10, 0x1

    iput v10, v5, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    .line 1409
    move-object v0, p2

    move/from16 v1, p8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1410
    move-object v0, p2

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v5, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    .line 1411
    iget v10, v5, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    packed-switch v10, :pswitch_data_0

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1443
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1447
    :cond_1
    :goto_0
    const/4 v10, 0x2

    iget v11, v5, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    if-eq v10, v11, :cond_2

    .line 1448
    invoke-virtual {v5, v3}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1449
    invoke-virtual {v5, p3}, Lcom/android/launcher2/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    .line 1451
    :cond_2
    return-object v5

    .line 1413
    :pswitch_0
    iput-object p1, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1414
    invoke-virtual {v5, p3}, Lcom/android/launcher2/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    goto :goto_0

    .line 1417
    :pswitch_1
    move-object v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1418
    .local v7, packageName:Ljava/lang/String;
    move-object v0, p2

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1419
    .local v8, resourceName:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1422
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 1423
    .local v9, resources:Landroid/content/res/Resources;
    if-eqz v9, :cond_3

    .line 1424
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1425
    .local v4, id:I
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1431
    .end local v4           #id:I
    .end local v9           #resources:Landroid/content/res/Resources;
    :cond_3
    :goto_1
    if-nez v3, :cond_1

    .line 1436
    .end local v6           #packageManager:Landroid/content/pm/PackageManager;
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #resourceName:Ljava/lang/String;
    :pswitch_2
    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1437
    if-eqz v3, :cond_0

    goto :goto_0

    .line 1427
    .restart local v6       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v8       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 1411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1346
    const/4 v1, 0x0

    .line 1347
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v2}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1349
    .local v2, info:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1350
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1351
    const/4 v4, 0x0

    .line 1393
    :goto_0
    return-object v4

    .line 1361
    :cond_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1362
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1363
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1366
    :cond_1
    if-nez v1, :cond_2

    .line 1367
    if-eqz p4, :cond_2

    .line 1368
    invoke-virtual {p0, p4, p5}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1372
    :cond_2
    if-nez v1, :cond_3

    .line 1373
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1374
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1376
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1379
    if-eqz v3, :cond_4

    .line 1380
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1383
    :cond_4
    iget-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 1384
    if-eqz p4, :cond_5

    .line 1385
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1389
    :cond_5
    iget-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 1390
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1392
    :cond_6
    iput v5, v2, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    move-object v4, v2

    .line 1393
    goto :goto_0
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 397
    monitor-exit v0

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 p1, v0

    .line 416
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v5, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v16, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v7, v4

    .line 420
    .local v7, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    if-nez v7, :cond_2

    .line 421
    const-string v18, "Launcher.Model"

    const-string v19, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    :goto_1
    return-void

    .line 419
    .end local v7           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v7, v18

    goto :goto_0

    .line 425
    .restart local v7       #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_2
    const-string v18, "Launcher.Model"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Got action "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 428
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, action:Ljava/lang/String;
    const-string v19, "android.intent.action.ACCESS_CONTROL_CHANGED"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 430
    .local v11, isAccessControl:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AllAppsList;->clear()V

    .line 431
    const-string v19, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    if-eqz v11, :cond_18

    .line 435
    :cond_3
    if-eqz v11, :cond_5

    const-string v19, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    .line 437
    .local v14, packageName:Ljava/lang/String;
    :goto_2
    const-string v19, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 439
    .local v17, replacing:Z
    if-eqz v11, :cond_6

    const-string v19, "android.intent.extra.KEY_EVENT"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const/high16 v20, 0x200

    and-int v19, v19, v20

    const/high16 v20, 0x200

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    move/from16 v12, v19

    .line 443
    .local v12, isAccessControlHide:Z
    :goto_3
    const-string v19, "com.android.stk"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    if-eqz v11, :cond_7

    const-string v19, "*"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 448
    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 449
    monitor-exit v18

    goto/16 :goto_1

    .line 581
    .end local v4           #action:Ljava/lang/String;
    .end local v11           #isAccessControl:Z
    .end local v12           #isAccessControlHide:Z
    .end local v14           #packageName:Ljava/lang/String;
    .end local v17           #replacing:Z
    :catchall_0
    move-exception v19

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 435
    .restart local v4       #action:Ljava/lang/String;
    .restart local v11       #isAccessControl:Z
    :cond_5
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    goto :goto_2

    .line 439
    .restart local v14       #packageName:Ljava/lang/String;
    .restart local v17       #replacing:Z
    :cond_6
    const/16 v19, 0x0

    move/from16 v12, v19

    goto :goto_3

    .line 452
    .restart local v12       #isAccessControlHide:Z
    :cond_7
    if-eqz v11, :cond_8

    .line 453
    const-string v19, "android.intent.extra.KEY_EVENT"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const/high16 v20, 0x200

    and-int v19, v19, v20

    const-string v20, "android.intent.extra.INITIAL_INTENTS"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/high16 v21, 0x200

    and-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 457
    monitor-exit v18

    goto/16 :goto_1

    .line 461
    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_a

    .line 463
    :cond_9
    monitor-exit v18

    goto/16 :goto_1

    .line 466
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearCustomizedIcons(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 474
    if-nez v11, :cond_b

    const/high16 v19, 0x200

    :try_start_3
    move-object/from16 v0, p1

    move-object v1, v14

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->isAccessControlled(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 476
    monitor-exit v18

    goto/16 :goto_1

    .line 469
    :catch_0
    move-exception v8

    .line 470
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const-string v19, "Launcher.Model"

    const-string v20, "database didnot ready,ignore this change"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    monitor-exit v18

    goto/16 :goto_1

    .line 479
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :cond_b
    const-string v19, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 501
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_d

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 505
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_13

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 508
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 509
    .local v10, info:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v19, v0

    move-object v0, v10

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/IconCache;->remove(Ljava/lang/String;)V

    goto :goto_5

    .line 481
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_e
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 482
    if-nez v17, :cond_c

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 487
    :cond_f
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 488
    if-nez v17, :cond_10

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 491
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 493
    :cond_11
    if-eqz v11, :cond_c

    .line 494
    if-eqz v12, :cond_12

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object v1, v14

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 497
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 513
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_14

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/LauncherModel$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 522
    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_15

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/LauncherModel$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 531
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/LauncherModel$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$3;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 580
    .end local v12           #isAccessControlHide:Z
    .end local v14           #packageName:Ljava/lang/String;
    .end local v17           #replacing:Z
    :cond_16
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AllAppsList;->clear()V

    .line 581
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 582
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_17

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 584
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader;->access$100(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    .line 585
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 587
    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 589
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader;->access$200(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    .line 590
    monitor-exit v18

    goto/16 :goto_1

    :catchall_1
    move-exception v19

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v19

    .line 537
    :cond_18
    :try_start_6
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_19

    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 539
    :cond_19
    const-string v19, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 541
    .local v15, packages:[Ljava/lang/String;
    if-eqz v15, :cond_1a

    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_1b

    .line 542
    :cond_1a
    monitor-exit v18

    goto/16 :goto_1

    .line 544
    :cond_1b
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 545
    move-object v6, v15

    .local v6, arr$:[Ljava/lang/String;
    array-length v13, v6

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_7
    if-ge v9, v13, :cond_1d

    aget-object v14, v6, v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 547
    .restart local v14       #packageName:Ljava/lang/String;
    :try_start_7
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    const/high16 v19, 0x200

    move-object/from16 v0, p1

    move-object v1, v14

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->isAccessControlled(Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_1c

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 545
    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 551
    :catch_1
    move-exception v19

    move-object/from16 v8, v19

    .line 552
    .restart local v8       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_8
    const-string v19, "Launcher.Model"

    const-string v20, "database didnot ready,ignore this change"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    monitor-exit v18

    goto/16 :goto_1

    .line 556
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    .end local v14           #packageName:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_16

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/LauncherModel$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$4;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 565
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v13           #len$:I
    :cond_1e
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 566
    move-object v6, v15

    .restart local v6       #arr$:[Ljava/lang/String;
    array-length v13, v6

    .restart local v13       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_8
    if-ge v9, v13, :cond_1f

    aget-object v14, v6, v9

    .line 567
    .restart local v14       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 566
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 569
    .end local v14           #packageName:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_16

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/LauncherModel$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$5;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6

    .line 585
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v13           #len$:I
    .end local v15           #packages:[Ljava/lang/String;
    :catchall_2
    move-exception v19

    :try_start_9
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v19
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/LauncherModel$Loader;->startLoader(Landroid/content/Context;Z)V

    .line 402
    return-void
.end method

.method public stopLoader()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader;->stopLoader()V

    .line 406
    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)V
    .locals 8
    .parameter "context"
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    const/4 v7, 0x0

    .line 1573
    iget-boolean v5, p2, Lcom/android/launcher2/ShortcutInfo;->onExternalStorage:Z

    if-eqz v5, :cond_0

    iget v5, p2, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    if-nez v5, :cond_0

    iget-boolean v5, p2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v5, :cond_0

    .line 1575
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1577
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 1578
    const/4 v5, 0x0

    :try_start_0
    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1579
    .local v4, saved:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p2, v5}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1580
    .local v2, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .line 1587
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    .local v3, needSave:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1588
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "going to save icon bitmap for info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 1595
    .end local v0           #data:[B
    .end local v3           #needSave:Z
    :cond_0
    return-void

    .restart local v0       #data:[B
    .restart local v2       #loaded:Landroid/graphics/Bitmap;
    .restart local v4       #saved:Landroid/graphics/Bitmap;
    :cond_1
    move v3, v7

    .line 1580
    goto :goto_0

    .line 1582
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0

    .line 1584
    .end local v3           #needSave:Z
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1585
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0
.end method
