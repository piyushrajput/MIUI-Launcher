.class Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;
.super Landroid/content/BroadcastReceiver;
.source "WidgetSpace.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollViewProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetSpace;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetSpace;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 671
    return-void
.end method

.method private declared-synchronized makeScrollable(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetHostView;)Ljava/lang/String;
    .locals 23
    .parameter "context"
    .parameter "intent"
    .parameter "widgetView"

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_VIEW_ID"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 491
    .local v10, dummyViewId:I
    if-gtz v10, :cond_0

    .line 492
    const-string v7, "Dummy view id needed."
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .end local p1
    :goto_0
    monitor-exit p0

    return-object v7

    .line 494
    .restart local p1
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    iget-object v8, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 495
    .local v8, appWidgetProvider:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 499
    .local v9, appWidgetId:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    move-object v7, v0

    invoke-virtual {v7}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v7, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 503
    .local v6, remoteContext:Landroid/content/Context;
    const/16 v17, 0x0

    .line 505
    .local v17, lv:Landroid/widget/AbsListView;
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 506
    .local v12, dummyView:Landroid/view/View;
    if-nez v12, :cond_1

    .line 507
    const-string v7, "Dummy view needed."

    goto :goto_0

    .line 509
    :cond_1
    instance-of v7, v12, Landroid/widget/AbsListView;

    if-eqz v7, :cond_7

    .line 510
    move-object v0, v12

    check-cast v0, Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    .line 544
    :cond_2
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 546
    .local v11, cursorDataUriString:Ljava/lang/String;
    sget-object v7, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;

    .line 547
    .local v15, listViewInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    if-nez v15, :cond_c

    const/4 v7, 0x1

    move/from16 v18, v7

    .line 549
    .local v18, newListView:Z
    :goto_1
    if-eqz v18, :cond_e

    .line 551
    new-instance v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;

    .end local v15           #listViewInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    move-object v7, v0

    invoke-direct {v15, v7}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;)V

    .line 554
    .restart local v15       #listViewInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_ITEM_LAYOUT_REMOTEVIEWS"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 555
    new-instance v5, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;II)V

    .line 561
    .local v5, lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;
    :goto_2
    new-instance v22, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$1;-><init>(Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;Lmobi/intuitit/android/widget/ScrollableBaseAdapter;)V

    .line 569
    .local v22, widgetDataChangeListener:Lmobi/intuitit/android/widget/WidgetDataChangeListener;
    new-instance v7, Lmobi/intuitit/android/widget/WidgetContentObserver;

    iget-object v12, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->obsHandler:Landroid/os/Handler;

    .end local v12           #dummyView:Landroid/view/View;
    move-object v0, v7

    move-object v1, v12

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lmobi/intuitit/android/widget/WidgetContentObserver;-><init>(Landroid/os/Handler;Lmobi/intuitit/android/widget/WidgetDataChangeListener;)V

    iput-object v7, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->obs:Landroid/database/ContentObserver;

    .line 571
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 573
    .local v21, uriToObserver:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v12, 0x1

    iget-object v13, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->obs:Landroid/database/ContentObserver;

    move-object v0, v7

    move-object/from16 v1, v21

    move v2, v12

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 577
    iput-object v5, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    .line 580
    const-string v7, "WidgetSpace"

    const-string v12, "makeScrollable : recreate listview adapter"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v5           #lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;
    .end local v21           #uriToObserver:Landroid/net/Uri;
    .end local v22           #widgetDataChangeListener:Lmobi/intuitit/android/widget/WidgetDataChangeListener;
    .end local p1
    :cond_3
    :goto_3
    iget-object v7, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 591
    iget-object v7, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    instance-of v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;

    if-eqz v7, :cond_4

    move-object v0, v15

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    move-object/from16 p1, v0

    check-cast p1, Lmobi/intuitit/android/widget/WidgetListAdapter;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemChildrenClickable:Z

    move v7, v0

    if-nez v7, :cond_4

    .line 593
    new-instance v7, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;-><init>(Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;Landroid/content/ComponentName;II)V

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 595
    :cond_4
    const/4 v7, 0x0

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 596
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 599
    iput v9, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->widgetId:I

    .line 600
    move-object/from16 v0, v17

    move-object v1, v15

    iput-object v0, v1, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    .line 601
    iput-object v11, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->key:Ljava/lang/CharSequence;

    .line 602
    sget-object v7, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v7, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_LISTVIEW_POSITION"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .end local v8           #appWidgetProvider:Landroid/content/ComponentName;
    move-result v19

    .line 607
    .local v19, position:I
    if-ltz v19, :cond_5

    .line 608
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 610
    :cond_5
    if-nez v18, :cond_6

    iget-object v7, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    instance-of v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;

    if-eqz v7, :cond_6

    .line 612
    iget-object v7, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    invoke-virtual {v7}, Lmobi/intuitit/android/widget/ScrollableBaseAdapter;->notifyToRegenerate()V

    .line 616
    :cond_6
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 618
    const-string v7, "WidgetSpace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AFTER ADDING, Our Scrollable widgets array contains:"

    .end local v9           #appWidgetId:I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 512
    .end local v11           #cursorDataUriString:Ljava/lang/String;
    .end local v15           #listViewInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    .end local v18           #newListView:Z
    .end local v19           #position:I
    .restart local v8       #appWidgetProvider:Landroid/content/ComponentName;
    .restart local v9       #appWidgetId:I
    .restart local v12       #dummyView:Landroid/view/View;
    .restart local p1
    :cond_7
    const/4 v12, 0x0

    .line 513
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_LISTVIEW_REMOTEVIEWS"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 514
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_LISTVIEW_REMOTEVIEWS"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lmobi/intuitit/android/widget/SimpleRemoteViews;

    .line 515
    .local v20, rvs:Lmobi/intuitit/android/widget/SimpleRemoteViews;
    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 516
    instance-of v7, v12, Landroid/widget/AbsListView;

    if-eqz v7, :cond_8

    .line 517
    move-object v0, v12

    check-cast v0, Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v10

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->replaceView(Landroid/view/ViewGroup;ILandroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 519
    const-string v7, "Cannot replace the dummy with the list view inflated from the passed RemoteViews."

    goto/16 :goto_0

    .line 521
    :cond_8
    const-string v7, "could not create AbsListView from the passed RemoteViews"

    goto/16 :goto_0

    .line 524
    .end local v20           #rvs:Lmobi/intuitit/android/widget/SimpleRemoteViews;
    :cond_9
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_LISTVIEW_LAYOUT_ID"

    const/4 v11, -0x1

    move-object/from16 v0, p2

    move-object v1, v7

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 526
    .local v16, listViewResId:I
    if-gtz v16, :cond_a

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->postListView(Landroid/appwidget/AppWidgetHostView;I)Landroid/widget/ListView;

    move-result-object v17

    .line 529
    if-nez v17, :cond_2

    .line 530
    const-string v7, "Cannot create the default list view."

    goto/16 :goto_0

    .line 533
    :cond_a
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 534
    .local v14, inflater:Landroid/view/LayoutInflater;
    const/4 v7, 0x0

    move-object v0, v14

    move/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 535
    instance-of v7, v12, Landroid/widget/AbsListView;

    if-eqz v7, :cond_b

    .line 536
    move-object v0, v12

    check-cast v0, Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v10

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->replaceView(Landroid/view/ViewGroup;ILandroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 538
    const-string v7, "Cannot replace the dummy with the list view inflated from the passed layout resource id."

    goto/16 :goto_0

    .line 540
    :cond_b
    const-string v7, "Cannot inflate a list view from the passed layout resource id."

    goto/16 :goto_0

    .line 547
    .end local v14           #inflater:Landroid/view/LayoutInflater;
    .end local v16           #listViewResId:I
    .restart local v11       #cursorDataUriString:Ljava/lang/String;
    .restart local v15       #listViewInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    :cond_c
    const/4 v7, 0x0

    move/from16 v18, v7

    goto/16 :goto_1

    .line 558
    .restart local v18       #newListView:Z
    :cond_d
    new-instance v5, Lmobi/intuitit/android/widget/WidgetListAdapter;

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Lmobi/intuitit/android/widget/WidgetListAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;II)V

    .restart local v5       #lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;
    goto/16 :goto_2

    .line 583
    .end local v5           #lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;
    :cond_e
    const-string v7, "WidgetSpace"

    const-string v12, "makeScrollable : restore listview adapter"

    .end local v12           #dummyView:Landroid/view/View;
    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v7, v15, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    instance-of v7, v7, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    if-eqz v7, :cond_3

    .line 585
    move-object v0, v15

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-virtual/range {p1 .. p2}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->updateFromIntent(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 620
    .end local v6           #remoteContext:Landroid/content/Context;
    .end local v8           #appWidgetProvider:Landroid/content/ComponentName;
    .end local v9           #appWidgetId:I
    .end local v11           #cursorDataUriString:Ljava/lang/String;
    .end local v15           #listViewInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    .end local v17           #lv:Landroid/widget/AbsListView;
    .end local v18           #newListView:Z
    :catch_0
    move-exception v7

    move-object v13, v7

    .line 621
    .local v13, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    goto/16 :goto_0

    .line 490
    .end local v10           #dummyViewId:I
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private declared-synchronized releaseScrollable(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetHostView;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "intent"
    .parameter "widgetView"

    .prologue
    const/4 v5, 0x0

    .line 650
    monitor-enter p0

    :try_start_0
    const-string v3, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, cursorDataUriString:Ljava/lang/String;
    sget-object v3, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;

    .line 653
    .local v2, listViewInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    if-eqz v2, :cond_1

    .line 654
    const/4 v3, 0x0

    iput-object v3, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    .line 655
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->obs:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 656
    const/4 v3, 0x0

    iput-object v3, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->obsHandler:Landroid/os/Handler;

    .line 657
    const/4 v3, 0x0

    iput-object v3, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->obs:Landroid/database/ContentObserver;

    .line 658
    iget-object v3, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    if-eqz v3, :cond_0

    .line 659
    iget-object v3, v2, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    invoke-virtual {v3, p1}, Lmobi/intuitit/android/widget/ScrollableBaseAdapter;->dropCache(Landroid/content/Context;)V

    .line 660
    :cond_0
    sget-object v3, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v3, v5

    .line 665
    .end local v0           #cursorDataUriString:Ljava/lang/String;
    .end local v2           #listViewInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 663
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 664
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 650
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private setSelection(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetHostView;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "intent"
    .parameter "widgetView"

    .prologue
    .line 629
    :try_start_0
    const-string v4, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, cursorDataUriString:Ljava/lang/String;
    const-string v4, "mobi.intuitit.android.hpp.EXTRA_LISTVIEW_POSITION"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 633
    .local v3, position:I
    sget-object v4, Lmobi/intuitit/android/widget/WidgetSpace;->mScrollViewCursorInfos:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;

    .line 634
    .local v1, cursorInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    if-eqz v1, :cond_0

    .line 635
    iget-object v4, v1, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    invoke-virtual {v4, v3}, Landroid/widget/AbsListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    const/4 v4, 0x0

    .line 640
    .end local v0           #cursorDataUriString:Ljava/lang/String;
    .end local v1           #cursorInfos:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
    .end local v3           #position:I
    :goto_0
    return-object v4

    .line 638
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 639
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 640
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    const-string v10, "mobi.intuitit.android.hpp.EXTRA_ERROR_MESSAGE"

    const-string v9, "mobi.intuitit.android.hpp.ERROR_SCROLL_CURSOR"

    .line 438
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, action:Ljava/lang/String;
    const-string v5, "WidgetSpace - onReceive: "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v5, "appWidgetId"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 443
    .local v3, widgetId:I
    if-gez v3, :cond_0

    .line 444
    const-string v5, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 445
    :cond_0
    if-gez v3, :cond_1

    .line 446
    const-string v5, "WidgetSpace"

    const-string v6, "Scroll Provider cannot get a legal widget id"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v5, v3}, Lmobi/intuitit/android/widget/WidgetSpace;->findWidget(I)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    .line 452
    .local v4, widgetView:Landroid/appwidget/AppWidgetHostView;
    if-nez v4, :cond_2

    .line 453
    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v5}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "mobi.intuitit.android.hpp.ERROR_SCROLL_CURSOR"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mobi.intuitit.android.hpp.EXTRA_ERROR_MESSAGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find app widget with id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v1, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 462
    .local v1, appWidgetProvider:Landroid/content/ComponentName;
    const-string v2, "unknow action"

    .line 463
    .local v2, error:Ljava/lang/String;
    const-string v5, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_START"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 464
    invoke-direct {p0, p1, p2, v4}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->makeScrollable(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetHostView;)Ljava/lang/String;

    move-result-object v2

    .line 474
    :cond_3
    :goto_1
    if-nez v2, :cond_7

    .line 476
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 477
    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v5}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "mobi.intuitit.android.hpp.ACTION_FINISH"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 466
    :cond_4
    const-string v5, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_SELECT_ITEM"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 468
    invoke-direct {p0, p1, p2, v4}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->setSelection(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetHostView;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 469
    :cond_5
    const-string v5, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_CLOSE"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 470
    invoke-direct {p0, p1, p2, v4}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->releaseScrollable(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetHostView;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 471
    :cond_6
    const-string v5, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_CLEAR_IMAGE_CACHE"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 472
    invoke-static {}, Lmobi/intuitit/android/widget/ListViewImageManager;->getInstance()Lmobi/intuitit/android/widget/ListViewImageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Lmobi/intuitit/android/widget/ListViewImageManager;->clearCacheForWidget(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 480
    :cond_7
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 481
    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v5}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "mobi.intuitit.android.hpp.ERROR_SCROLL_CURSOR"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mobi.intuitit.android.hpp.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v6, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 761
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 764
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lmobi/intuitit/android/widget/WidgetSpace;->mAllowLongPress:Z

    .line 765
    return-void

    .line 764
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method postListView(Landroid/appwidget/AppWidgetHostView;I)Landroid/widget/ListView;
    .locals 2
    .parameter "widgetView"
    .parameter "dummyViewId"

    .prologue
    .line 725
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v1}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 726
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 728
    invoke-virtual {p0, p1, p2, v0}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->replaceView(Landroid/view/ViewGroup;ILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 731
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method replaceView(Landroid/view/ViewGroup;ILandroid/view/View;)Z
    .locals 5
    .parameter "vg"
    .parameter "id"
    .parameter "replacement"

    .prologue
    const/4 v4, 0x1

    .line 743
    const/4 v2, 0x0

    .line 744
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 745
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 746
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 748
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 750
    invoke-virtual {p3, p2}, Landroid/view/View;->setId(I)V

    .line 752
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, p3, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v3, v4

    .line 757
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v3

    .line 754
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 755
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {p0, v0, p2, p3}, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->replaceView(Landroid/view/ViewGroup;ILandroid/view/View;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 744
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 757
    goto :goto_1
.end method
