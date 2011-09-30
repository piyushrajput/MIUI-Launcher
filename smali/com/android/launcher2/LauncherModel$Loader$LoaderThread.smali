.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
.super Ljava/lang/Thread;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mInstalledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLaunching:Z

.field private mLoadAndBindStepFinished:Z

.field private final mManager:Landroid/content/pm/PackageManager;

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$Loader;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "waitThread"
    .parameter "isLaunching"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 671
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    .line 674
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 675
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 676
    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    .line 677
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    .line 678
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    .line 679
    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    return v0
.end method

.method private bindWorkspace()V
    .locals 20

    .prologue
    .line 1146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 1150
    .local v17, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1151
    .local v7, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v7, :cond_0

    .line 1153
    const-string v4, "Launcher.Model"

    const-string v5, "LoaderThread running with no launcher"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :goto_0
    return-void

    .line 1159
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/DeferredHandler;->cancel()V

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1171
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1172
    .local v6, itemClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1173
    .local v10, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 1174
    move/from16 v8, v16

    .line 1175
    .local v8, start:I
    add-int/lit8 v4, v16, 0x6

    if-gt v4, v10, :cond_1

    const/4 v4, 0x6

    move v9, v4

    .line 1176
    .local v9, chunkSize:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v4, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;II)V

    invoke-virtual {v11, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1173
    add-int/lit8 v16, v16, 0x6

    goto :goto_1

    .line 1175
    .end local v9           #chunkSize:I
    :cond_1
    sub-int v4, v10, v16

    move v9, v4

    goto :goto_2

    .line 1186
    .end local v8           #start:I
    :cond_2
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-direct {v13, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1187
    .local v13, foldersClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$7;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$7;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1205
    invoke-interface {v7}, Lcom/android/launcher2/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v12

    .line 1206
    .local v12, currentScreen:I
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1207
    .local v11, appWidgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    const/4 v4, -0x1

    if-eq v12, v4, :cond_4

    .line 1208
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1210
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_4

    .line 1211
    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1212
    .local v19, widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screenId:J

    move-wide v4, v0

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$9;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$9;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1210
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1225
    .end local v19           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_4
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_6

    .line 1226
    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1227
    .restart local v19       #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screenId:J

    move-wide v4, v0

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$10;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$10;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1225
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1240
    .end local v19           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_6
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1241
    .local v15, gadgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/GadgetInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1243
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_8

    .line 1244
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 1245
    .local v14, gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v4, v14, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$11;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$11;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1243
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1257
    .end local v14           #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_8
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_a

    .line 1258
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 1259
    .restart local v14       #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v4, v14, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-eqz v4, :cond_9

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1257
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1272
    .end local v14           #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$13;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$13;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$14;

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$14;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;J)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private doLoad()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const-string v3, "Launcher.Model"

    .line 829
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 830
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 832
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    const-string v0, "Launcher.Model"

    const-string v0, "step 1: loading workspace"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    .line 842
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 843
    :try_start_1
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v1, :cond_0

    .line 844
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 846
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 848
    const-string v0, "Launcher.Model"

    const-string v0, "step 2: loading missing icons"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAndBindMissingIcons()V

    .line 851
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 854
    :try_start_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel$Loader;->access$1102(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    .line 855
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 863
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 868
    return-void

    :cond_1
    move v1, v2

    .line 830
    goto :goto_0

    .line 832
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 846
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 855
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private loadAndBindMissingIcons()V
    .locals 13

    .prologue
    const-string v12, "Launcher.Model"

    .line 708
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v8, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v8

    .line 713
    .local v1, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_1
    if-nez v1, :cond_3

    .line 714
    const-string v8, "Launcher.Model"

    const-string v8, "No callback to call back"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    .end local v1           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_2
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_1

    .line 719
    .restart local v1       #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 720
    const-string v8, "Launcher.Model"

    const-string v8, "No main activity found, the system is so clean"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 724
    :cond_4
    const/4 v3, 0x0

    .line 725
    .local v3, count:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 726
    .local v7, updatedPackages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 727
    .local v2, cn:Landroid/content/ComponentName;
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v8, :cond_0

    .line 731
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 735
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 740
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 746
    :try_start_1
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 747
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 741
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 742
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    const-string v8, "Launcher.Model"

    const-string v8, "database didnot ready,ignore this package."

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 747
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 752
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_6
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 753
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 754
    .local v6, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 755
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$1;

    invoke-direct {v9, p0, v6, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$1;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 764
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel$Loader;->access$100(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    .line 767
    .end local v6           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    :cond_7
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 769
    .local v0, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 770
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;

    invoke-direct {v9, p0, v0, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 779
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel$Loader;->access$200(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 4

    .prologue
    .line 790
    monitor-enter p0

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    .line 792
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$902(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 793
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindWorkspace loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadWorkspace()V

    .line 802
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$902(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 810
    :goto_0
    return-void

    .line 793
    .end local v0           #loaded:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 809
    .restart local v0       #loaded:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v9, "Launcher.Model"

    .line 949
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 950
    .local v0, appWidgetId:I
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 952
    .local v2, id:J
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 955
    .local v4, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 957
    :cond_0
    const-string v5, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 960
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_1
    :goto_0
    return-void

    .line 963
    :cond_2
    new-instance v1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 964
    .local v1, appWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iput-wide v2, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    .line 965
    invoke-virtual {v1, p1}, Lcom/android/launcher2/LauncherAppWidgetInfo;->load(Landroid/database/Cursor;)V

    .line 966
    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 968
    iget-wide v5, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 969
    const-string v5, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 974
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 980
    .local v0, gadgetId:I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 981
    .local v2, id:J
    invoke-static {v0}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 982
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 983
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    new-instance v1, Lcom/android/launcher2/gadget/GadgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher2/gadget/GadgetInfo;-><init>(I)V

    .line 988
    .local v1, gadgetInfo:Lcom/android/launcher2/gadget/GadgetInfo;
    iput-wide v2, v1, Lcom/android/launcher2/gadget/GadgetInfo;->id:J

    .line 989
    invoke-virtual {v1, p1}, Lcom/android/launcher2/gadget/GadgetInfo;->load(Landroid/database/Cursor;)V

    .line 990
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadLiveFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 921
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 922
    .local v6, id:J
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 925
    .local v9, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 928
    .local v8, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v8, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-static {v0, v6, v7}, Lcom/android/launcher2/LauncherModel;->access$1300(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v5

    .line 932
    .local v5, liveFolderInfo:Lcom/android/launcher2/LiveFolderInfo;
    iput-object v9, v5, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 933
    invoke-virtual {v5, p1}, Lcom/android/launcher2/LiveFolderInfo;->load(Landroid/database/Cursor;)V

    .line 935
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x6

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->access$1400(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V

    .line 938
    iget-wide v0, v5, Lcom/android/launcher2/LiveFolderInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v1, v5, Lcom/android/launcher2/LiveFolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadShortcut(Landroid/database/Cursor;I)V
    .locals 21
    .parameter "c"
    .parameter "itemType"

    .prologue
    .line 997
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1002
    .local v7, intent:Landroid/content/Intent;
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1050
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 999
    .local v16, e:Ljava/net/URISyntaxException;
    goto :goto_0

    .line 1008
    .end local v16           #e:Ljava/net/URISyntaxException;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_1
    if-nez p2, :cond_5

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    const/4 v10, 0x4

    const/4 v11, 0x2

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v20

    .line 1011
    .local v20, info:Lcom/android/launcher2/ShortcutInfo;
    if-eqz v20, :cond_2

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    :cond_2
    :goto_1
    if-eqz v20, :cond_7

    .line 1020
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 1021
    .local v15, cn:Landroid/content/ComponentName;
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/high16 v8, 0x200

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->isAccessControlled(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1025
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v8, 0x4

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)V

    .line 1026
    move-object v0, v7

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1027
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutInfo;->load(Landroid/database/Cursor;)V

    .line 1029
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    move-wide v5, v0

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .end local v7           #intent:Landroid/content/Intent;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    move-wide v5, v0

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 1031
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader;->access$1500(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/ShortcutInfo;)V

    goto/16 :goto_0

    .line 1015
    .end local v15           #cn:Landroid/content/ComponentName;
    .end local v20           #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v6, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v9, v0

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/4 v14, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v20

    .restart local v20       #info:Lcom/android/launcher2/ShortcutInfo;
    goto/16 :goto_1

    .line 1034
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v15       #cn:Landroid/content/ComponentName;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/launcher2/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v17

    .line 1035
    .local v17, folderInfo:Lcom/android/launcher2/UserFolderInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_2

    .line 1046
    .end local v15           #cn:Landroid/content/ComponentName;
    .end local v17           #folderInfo:Lcom/android/launcher2/UserFolderInfo;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1047
    .local v18, id:J
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    .end local v7           #intent:Landroid/content/Intent;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", removing it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-static/range {v18 .. v19}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadUserFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 908
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 909
    .local v1, id:J
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-static {v3, v1, v2}, Lcom/android/launcher2/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v0

    .line 910
    .local v0, folderInfo:Lcom/android/launcher2/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/UserFolderInfo;->load(Landroid/database/Cursor;)V

    .line 912
    iget-wide v3, v0, Lcom/android/launcher2/UserFolderInfo;->container:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, v0, Lcom/android/launcher2/UserFolderInfo;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 914
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/android/launcher2/UserFolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    return-void
.end method

.method private loadWorkspace()V
    .locals 25

    .prologue
    .line 1053
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 1055
    .local v23, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedUris:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1064
    new-instance v20, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1065
    .local v20, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v20

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 1067
    .local v17, installedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    .line 1068
    .local v22, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1069
    .local v21, packageName:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1070
    .local v11, className:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1075
    .end local v11           #className:Ljava/lang/String;
    .end local v21           #packageName:Ljava/lang/String;
    .end local v22           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v19, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/launcher2/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1080
    .local v10, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move v4, v0

    if-nez v4, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 1082
    const/16 v4, 0x8

    :try_start_1
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1084
    .local v18, itemType:I
    packed-switch v18, :pswitch_data_0

    goto :goto_1

    .line 1087
    :pswitch_0
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadShortcut(Landroid/database/Cursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1106
    .end local v18           #itemType:I
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 1107
    .local v13, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1111
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1091
    .restart local v18       #itemType:I
    :pswitch_1
    :try_start_3
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadUserFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1095
    :pswitch_2
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadLiveFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1099
    :pswitch_3
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1103
    :pswitch_4
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1111
    .end local v18           #itemType:I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1114
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v12

    .line 1118
    .local v12, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1120
    .local v15, id:J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :try_start_4
    invoke-static/range {v15 .. v16}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v4, v5, v6}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1125
    :catch_1
    move-exception v4

    move-object v13, v4

    .line 1126
    .local v13, e:Landroid/os/RemoteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1127
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    move-object v13, v4

    .line 1128
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove id(database readonly) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1132
    .end local v12           #client:Landroid/content/ContentProviderClient;
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .end local v15           #id:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$4;

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$4;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;J)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1140
    return-void

    .line 1084
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private waitForOtherThread()V
    .locals 2

    .prologue
    .line 693
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, done:Z
    :goto_0
    if-nez v0, :cond_0

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    const/4 v0, 0x1

    goto :goto_0

    .line 703
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 705
    .end local v0           #done:Z
    :cond_1
    return-void

    .line 699
    .restart local v0       #done:Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher.Model"

    .line 1292
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mWaitThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mIsLaunching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mLoadAndBindStepFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mLoadAndBindStepFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$Loader;->access$1000(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 814
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    monitor-enter v0

    .line 815
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->waitForOtherThread()V

    .line 816
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->doLoad()V

    .line 817
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$Loader;->access$1000(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 819
    return-void

    .line 817
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 871
    monitor-enter p0

    .line 872
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    .line 873
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 874
    monitor-exit p0

    .line 875
    return-void

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v4, 0x0

    .line 885
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 886
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v2, :cond_0

    .line 887
    monitor-exit v1

    move-object v1, v4

    .line 903
    :goto_0
    return-object v1

    .line 890
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 891
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 894
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 895
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 896
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 898
    :cond_2
    if-nez v0, :cond_3

    .line 899
    const-string v2, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 903
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 904
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
