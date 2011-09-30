.class public abstract Lmobi/intuitit/android/widget/WidgetSpace;
.super Lcom/android/launcher2/DragableScreenView;
.source "WidgetSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;,
        Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;,
        Lmobi/intuitit/android/widget/WidgetSpace$AnimationException;,
        Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;,
        Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    }
.end annotation


# static fields
.field private static final CLEAR_DATA_CACHE:Z = true

.field private static final FORCE_FREE_MEMORY:Z = true

.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WidgetSpace"

.field static mScrollViewCursorInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAllowLongPress:Z

.field mAnimationProvider:Landroid/content/BroadcastReceiver;

.field mScrollViewProvider:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/launcher2/DragableScreenView;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Lmobi/intuitit/android/widget/WidgetSpace$1;

    invoke-direct {v0, p0}, Lmobi/intuitit/android/widget/WidgetSpace$1;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mAnimationProvider:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    invoke-direct {v0, p0}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewProvider:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Lmobi/intuitit/android/widget/WidgetSpace$1;

    invoke-direct {v0, p0}, Lmobi/intuitit/android/widget/WidgetSpace$1;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mAnimationProvider:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    invoke-direct {v0, p0}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewProvider:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v0, Lmobi/intuitit/android/widget/WidgetSpace$1;

    invoke-direct {v0, p0}, Lmobi/intuitit/android/widget/WidgetSpace$1;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mAnimationProvider:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    invoke-direct {v0, p0}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewProvider:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    .line 60
    return-void
.end method


# virtual methods
.method final findWidget(I)Landroid/appwidget/AppWidgetHostView;
    .locals 11
    .parameter "appWidgetId"

    .prologue
    .line 823
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetSpace;->getScreenCount()I

    move-result v8

    .line 824
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 825
    invoke-virtual {p0, v7}, Lmobi/intuitit/android/widget/WidgetSpace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    .line 826
    .local v3, currentScreen:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v2

    .line 827
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 828
    invoke-virtual {v3, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 829
    .local v1, child:Landroid/view/View;
    invoke-virtual/range {v1 .. v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 830
    .local v6, tag:Ljava/lang/Object;
    instance-of v9, v6, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v9, :cond_0

    .line 831
    move-object v0, v6

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v4, v0

    .line 832
    .local v4, f:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget v9, v4, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v9, p1, :cond_0

    iget-object v0, v4, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object v9, v0

    .line 838
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/android/launcher2/CellLayout;
    .end local v4           #f:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v5           #i:I
    .end local v6           #tag:Ljava/lang/Object;
    :goto_2
    return-object v9

    .line 827
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/android/launcher2/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #tag:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 824
    .end local v1           #child:Landroid/view/View;
    .end local v6           #tag:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 838
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/android/launcher2/CellLayout;
    .end local v5           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method final findWidget(II)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .parameter "screen"
    .parameter "appWidgetId"

    .prologue
    .line 318
    invoke-virtual {p0, p2}, Lmobi/intuitit/android/widget/WidgetSpace;->findWidget(I)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 320
    return-object v0
.end method

.method public abstract getCellLayout(I)Lcom/android/launcher2/CellLayout;
.end method

.method public abstract getLauncherActivity()Landroid/app/Activity;
.end method

.method public declared-synchronized isWidgetScrollable(I)Z
    .locals 3
    .parameter "widgetId"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    sget-object v2, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;

    .line 347
    .local v1, item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    iget v2, v1, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->widgetId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 348
    const/4 v2, 0x1

    .line 350
    .end local v1           #item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 346
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public registerProvider()V
    .locals 4

    .prologue
    .line 772
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 774
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 775
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "mobi.intuitit.android.hpp.ACTION_START_FRAME_ANIMATION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string v3, "mobi.intuitit.android.hpp.ACTION_STOP_FRAME_ANIMATION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v3, "mobi.intuitit.android.hpp.ACTION_START_TWEEN_ANIMATION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    iget-object v3, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mAnimationProvider:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 780
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 781
    .local v2, scrollFilter:Landroid/content/IntentFilter;
    const-string v3, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    const-string v3, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_CLOSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    const-string v3, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_CLEAR_IMAGE_CACHE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    const-string v3, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_SELECT_ITEM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    iget-object v3, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewProvider:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 786
    return-void
.end method

.method public declared-synchronized unbindWidgetScrollable()Z
    .locals 5

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    sget-object v3, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;

    .line 356
    .local v2, item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    iget-object v3, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    if-eqz v3, :cond_1

    .line 358
    iget-object v3, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 359
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 360
    instance-of v3, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;

    if-eqz v3, :cond_2

    .line 361
    check-cast v0, Lmobi/intuitit/android/widget/WidgetListAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lmobi/intuitit/android/widget/WidgetListAdapter;->clearDataCache()V

    .line 366
    :cond_0
    :goto_1
    iget-object v3, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 368
    :cond_1
    const/4 v3, 0x0

    iput-object v3, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 355
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 362
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    :cond_2
    :try_start_1
    instance-of v3, v0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    if-eqz v3, :cond_0

    .line 363
    check-cast v0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->dropCache()V

    goto :goto_1

    .line 370
    .end local v2           #item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    :cond_3
    invoke-static {}, Lmobi/intuitit/android/widget/ListViewImageManager;->getInstance()Lmobi/intuitit/android/widget/ListViewImageManager;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/intuitit/android/widget/ListViewImageManager;->unbindDrawables()V

    .line 373
    invoke-static {}, Lmobi/intuitit/android/widget/ListViewImageManager;->getInstance()Lmobi/intuitit/android/widget/ListViewImageManager;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/intuitit/android/widget/ListViewImageManager;->clearCache()V

    .line 377
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    const/4 v3, 0x0

    monitor-exit p0

    return v3
.end method

.method public declared-synchronized unbindWidgetScrollableId(I)Z
    .locals 11
    .parameter "widgetId"

    .prologue
    const-string v8, "WidgetSpace"

    .line 383
    monitor-enter p0

    :try_start_0
    const-string v8, "WidgetSpace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trying to completely unallocate widget ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v4, 0x0

    .line 385
    .local v4, keyToDelete:Ljava/lang/CharSequence;
    sget-object v8, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;

    .line 386
    .local v3, item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    const-string v8, "WidgetSpace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Comparing widget ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->widgetId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v8, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->widgetId:I

    if-ne v8, p1, :cond_0

    .line 388
    const-string v8, "WidgetSpace"

    const-string v9, "trying to completely unallocate widget stuff..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0, p1}, Lmobi/intuitit/android/widget/WidgetSpace;->findWidget(I)Landroid/appwidget/AppWidgetHostView;

    move-result-object v7

    .line 390
    .local v7, widgetView:Landroid/appwidget/AppWidgetHostView;
    const-string v8, "WidgetSpace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Widget view to KILL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v6, 0x0

    .line 392
    .local v6, remoteContext:Landroid/content/Context;
    if-eqz v7, :cond_1

    .line 393
    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 394
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_5

    iget-object v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v8, :cond_5

    .line 395
    iget-object v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 397
    .local v5, packageName:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 406
    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #packageName:Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 407
    :try_start_2
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 408
    :cond_2
    iget-object v8, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    if-eqz v8, :cond_4

    .line 409
    const-string v8, "WidgetSpace"

    const-string v9, "Trying to KILL the ListView..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v8, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    if-eqz v8, :cond_3

    .line 411
    iget-object v8, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    invoke-virtual {v8, v6}, Lmobi/intuitit/android/widget/ScrollableBaseAdapter;->dropCache(Landroid/content/Context;)V

    .line 413
    :cond_3
    iget-object v8, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 414
    const/4 v8, 0x0

    iput-object v8, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    .line 416
    :cond_4
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->obs:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 417
    const/4 v8, 0x0

    iput-object v8, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->obsHandler:Landroid/os/Handler;

    .line 418
    const/4 v8, 0x0

    iput-object v8, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->obs:Landroid/database/ContentObserver;

    .line 419
    iget-object v4, v3, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->key:Ljava/lang/CharSequence;

    .line 420
    const/4 v3, 0x0

    .line 421
    invoke-static {}, Lmobi/intuitit/android/widget/ListViewImageManager;->getInstance()Lmobi/intuitit/android/widget/ListViewImageManager;

    move-result-object v8

    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, p1}, Lmobi/intuitit/android/widget/ListViewImageManager;->clearCacheForWidget(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 383
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    .end local v4           #keyToDelete:Ljava/lang/CharSequence;
    .end local v6           #remoteContext:Landroid/content/Context;
    .end local v7           #widgetView:Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 400
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #info:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v3       #item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    .restart local v4       #keyToDelete:Ljava/lang/CharSequence;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #remoteContext:Landroid/content/Context;
    .restart local v7       #widgetView:Landroid/appwidget/AppWidgetHostView;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 401
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v8, "WidgetSpace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "couldn\'t find widget id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #packageName:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 424
    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3           #item:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    .end local v6           #remoteContext:Landroid/content/Context;
    .end local v7           #widgetView:Landroid/appwidget/AppWidgetHostView;
    :cond_6
    if-eqz v4, :cond_7

    sget-object v8, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_7
    invoke-static {}, Lmobi/intuitit/android/widget/ListViewImageManager;->getInstance()Lmobi/intuitit/android/widget/ListViewImageManager;

    move-result-object v8

    invoke-virtual {v8}, Lmobi/intuitit/android/widget/ListViewImageManager;->unbindDrawables()V

    .line 428
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 430
    const-string v8, "WidgetSpace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AFTER REMOVING, Our Scrollable widgets array contains:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    const/4 v8, 0x0

    monitor-exit p0

    return v8
.end method

.method public unregisterProvider()V
    .locals 2

    .prologue
    .line 792
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 793
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mAnimationProvider:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lmobi/intuitit/android/widget/WidgetSpace;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 794
    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewProvider:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    invoke-virtual {p0, v0, v1}, Lmobi/intuitit/android/widget/WidgetSpace;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 795
    return-void
.end method

.method unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "context"
    .parameter "receiver"

    .prologue
    .line 805
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
