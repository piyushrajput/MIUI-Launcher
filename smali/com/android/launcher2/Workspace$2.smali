.class Lcom/android/launcher2/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;

.field final synthetic val$manager:Landroid/content/pm/PackageManager;

.field final synthetic val$packages:Ljava/util/ArrayList;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$2;->val$manager:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/android/launcher2/Workspace$2;->val$widgets:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 867
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v5, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v4

    .line 870
    .local v4, childCount:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    if-ge v9, v4, :cond_8

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 872
    .local v16, view:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 874
    .local v14, tag:Ljava/lang/Object;
    move-object v0, v14

    instance-of v0, v0, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 875
    move-object v0, v14

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v7, v0

    .line 876
    .local v7, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v8, v7, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 877
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 879
    .local v10, name:Landroid/content/ComponentName;
    if-eqz v10, :cond_3

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 881
    .local v13, ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    move-object v0, v13

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 883
    move-object v0, v13

    iget-boolean v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->replacing:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object v0, v7

    iget v0, v0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 887
    :cond_1
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 891
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #name:Landroid/content/ComponentName;
    .end local v13           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_2
    move-object v0, v14

    instance-of v0, v0, Lcom/android/launcher2/UserFolderInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 892
    move-object v0, v14

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v7, v0

    .line 893
    .local v7, info:Lcom/android/launcher2/UserFolderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v18

    move-object v0, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/UserFolderInfo;->removeItems(Ljava/util/ArrayList;Lcom/android/launcher2/Launcher;)V

    .line 894
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/FolderIcon;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 895
    check-cast v16, Lcom/android/launcher2/FolderIcon;

    .end local v16           #view:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 870
    .end local v7           #info:Lcom/android/launcher2/UserFolderInfo;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 897
    .restart local v16       #view:Landroid/view/View;
    :cond_4
    move-object v0, v14

    instance-of v0, v0, Lcom/android/launcher2/LiveFolderInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 898
    move-object v0, v14

    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    move-object v7, v0

    .line 899
    .local v7, info:Lcom/android/launcher2/LiveFolderInfo;
    iget-object v15, v7, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 900
    .local v15, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$manager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    .line 903
    .local v12, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v12, :cond_3

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 905
    .restart local v13       #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    move-object v0, v13

    iget-boolean v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->replacing:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object v0, v13

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v12

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 908
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 912
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/android/launcher2/LiveFolderInfo;
    .end local v12           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v13           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_6
    move-object v0, v14

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 913
    move-object v0, v14

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v7, v0

    .line 914
    .local v7, info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$widgets:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v17, v0

    move-object v0, v7

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 916
    .local v11, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v11, :cond_3

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 918
    .restart local v13       #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    move-object v0, v13

    iget-boolean v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->replacing:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object v0, v13

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v11

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 921
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 928
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v11           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v13           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    .end local v14           #tag:Ljava/lang/Object;
    .end local v16           #view:Landroid/view/View;
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 929
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v4, :cond_a

    .line 930
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 931
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 932
    move-object v0, v3

    instance-of v0, v0, Lcom/android/launcher2/DropTarget;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;

    move-result-object v17

    check-cast v3, Lcom/android/launcher2/DropTarget;

    .end local v3           #child:Landroid/view/View;
    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 929
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 937
    :cond_a
    if-lez v4, :cond_b

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 941
    :cond_b
    return-void
.end method
