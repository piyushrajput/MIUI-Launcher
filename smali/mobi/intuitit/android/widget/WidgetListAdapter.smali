.class public Lmobi/intuitit/android/widget/WidgetListAdapter;
.super Lmobi/intuitit/android/widget/ScrollableBaseAdapter;
.source "WidgetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;,
        Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;,
        Lmobi/intuitit/android/widget/WidgetListAdapter$ItemViewClickListener;,
        Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;,
        Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;,
        Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    }
.end annotation


# static fields
.field static final IMPOSSIBLE_INDEX:I = -0x64

.field private static final LOGD:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "LauncherPP_WLA"

.field private static final NB_MAX_VIEWS_TYPES:I = 0x1

.field static mImageManager:Lmobi/intuitit/android/widget/ListViewImageManager;


# instance fields
.field mAllowRequery:Z

.field final mAppWidgetId:I

.field mAppWidgetProvider:Landroid/content/ComponentName;

.field private mAsyncQuery:Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field final mGenerateDataCacheRunnable:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field final mInflater:Landroid/view/LayoutInflater;

.field private final mIntent:Landroid/content/Intent;

.field final mItemActionUriIndex:I

.field public final mItemChildrenClickable:Z

.field final mItemLayoutId:I

.field mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

.field final mListViewId:I

.field public rowsElementsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lmobi/intuitit/android/widget/ListViewImageManager;->getInstance()Lmobi/intuitit/android/widget/ListViewImageManager;

    move-result-object v0

    sput-object v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mImageManager:Lmobi/intuitit/android/widget/ListViewImageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "context"
    .parameter "intent"
    .parameter "provider"
    .parameter "appWidgetId"
    .parameter "listViewId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 144
    invoke-direct {p0}, Lmobi/intuitit/android/widget/ScrollableBaseAdapter;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAllowRequery:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->rowsElementsList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lmobi/intuitit/android/widget/WidgetListAdapter$1;

    invoke-direct {v0, p0}, Lmobi/intuitit/android/widget/WidgetListAdapter$1;-><init>(Lmobi/intuitit/android/widget/WidgetListAdapter;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mGenerateDataCacheRunnable:Ljava/lang/Runnable;

    .line 146
    iput p4, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetId:I

    .line 147
    iput p5, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mListViewId:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 149
    iput-object p2, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mIntent:Landroid/content/Intent;

    .line 150
    iput-object p3, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetProvider:Landroid/content/ComponentName;

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 154
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_DATA_PROVIDER_ALLOW_REQUERY"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAllowRequery:Z

    .line 158
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_LAYOUT_ID"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemLayoutId:I

    .line 159
    iget v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemLayoutId:I

    if-gtz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The passed layout id is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_CHILDREN_CLICKABLE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemChildrenClickable:Z

    .line 165
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_ACTION_VIEW_URI_INDEX"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemActionUriIndex:I

    .line 169
    invoke-direct {p0, p2}, Lmobi/intuitit/android/widget/WidgetListAdapter;->generateItemMapping(Landroid/content/Intent;)V

    .line 171
    new-instance v0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;-><init>(Lmobi/intuitit/android/widget/WidgetListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAsyncQuery:Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;

    .line 173
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mGenerateDataCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method static synthetic access$000(Lmobi/intuitit/android/widget/WidgetListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lmobi/intuitit/android/widget/WidgetListAdapter;->generateDataCache()V

    return-void
.end method

.method private generateDataCache()V
    .locals 9

    .prologue
    .line 224
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "LAUNCHER"

    const-string v1, "API v1 START QUERY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAsyncQuery:Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;

    const/4 v1, 0x1

    const-string v2, "cookie"

    iget-object v3, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mIntent:Landroid/content/Intent;

    const-string v4, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mIntent:Landroid/content/Intent;

    const-string v5, "mobi.intuitit.android.hpp.EXTRA_PROJECTION"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mIntent:Landroid/content/Intent;

    const-string v6, "mobi.intuitit.android.hpp.EXTRA_SELECTION"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mIntent:Landroid/content/Intent;

    const-string v7, "mobi.intuitit.android.hpp.EXTRA_SELECTION_ARGUMENTS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mIntent:Landroid/content/Intent;

    const-string v8, "mobi.intuitit.android.hpp.EXTRA_SORT_ORDER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generateItemMapping(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    .line 188
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_VIEW_TYPES"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    .line 190
    .local v6, viewTypes:[I
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_VIEW_IDS"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 191
    .local v5, viewIds:[I
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_CURSOR_INDICES"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 193
    .local v0, cursorIndices:[I
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_DEFAULT_RESOURCES"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 195
    .local v1, defaultResources:[I
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_VIEW_CLICKABLE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v4

    .line 199
    .local v4, viewClickable:[Z
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "A mapping component is missing"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 202
    :cond_1
    array-length v7, v6

    array-length v8, v5

    if-ne v7, v8, :cond_2

    array-length v7, v6

    array-length v8, v0

    if-ne v7, v8, :cond_2

    .line 207
    array-length v3, v6

    .line 208
    .local v3, size:I
    new-array v7, v3, [Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    iput-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    .line 209
    sub-int v2, v3, v12

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 210
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    new-instance v8, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    aget v9, v6, v2

    aget v10, v5, v2

    aget v11, v0, v2

    invoke-direct {v8, p0, v9, v10, v11}, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;-><init>(Lmobi/intuitit/android/widget/WidgetListAdapter;III)V

    aput-object v8, v7, v2

    .line 209
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 204
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Mapping inconsistent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 213
    .restart local v2       #i:I
    .restart local v3       #size:I
    :cond_3
    if-eqz v4, :cond_4

    array-length v7, v4

    if-ne v7, v3, :cond_4

    .line 214
    sub-int v2, v3, v12

    :goto_1
    if-ltz v2, :cond_4

    .line 215
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    aget-object v7, v7, v2

    aget-boolean v8, v4, v2

    iput-boolean v8, v7, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->clickable:Z

    .line 214
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 217
    :cond_4
    if-eqz v1, :cond_5

    array-length v7, v1

    if-ne v7, v3, :cond_5

    .line 218
    sub-int v2, v3, v12

    :goto_2
    if-ltz v2, :cond_5

    .line 219
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    aget-object v7, v7, v2

    aget v8, v1, v2

    iput v8, v7, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->defaultResource:I

    .line 218
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 221
    :cond_5
    return-void
.end method


# virtual methods
.method public bindView(Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;Landroid/view/View;Landroid/content/Context;I)V
    .locals 20
    .parameter "holder"
    .parameter "view"
    .parameter "context"
    .parameter "itemPosition"

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    move-object v14, v0

    if-nez v14, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    move-object v14, v0

    array-length v13, v14

    .line 246
    .local v13, size:I
    const/4 v14, 0x1

    sub-int v9, v13, v14

    .local v9, i:I
    :goto_1
    if-ltz v9, :cond_5

    .line 247
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    move-object v14, v0

    aget-object v10, v14, v9

    .line 249
    .local v10, itemMapping:Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
    move-object/from16 v0, p1

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;->views:[Landroid/view/View;

    move-object v14, v0

    aget-object v14, v14, v9

    if-eqz v14, :cond_4

    .line 250
    move-object/from16 v0, p1

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;->views:[Landroid/view/View;

    move-object v14, v0

    aget-object v5, v14, v9

    .line 256
    .local v5, child:Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->rowsElementsList:Ljava/util/ArrayList;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;

    iget-object v14, v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;->singleRowElementsList:[Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;

    aget-object v12, v14, v9

    .line 258
    .local v12, rowElement:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    iget v14, v10, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->type:I

    packed-switch v14, :pswitch_data_0

    .line 319
    :cond_2
    :goto_3
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    iput-object v0, v1, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;->lvClickItemTag:Ljava/lang/Object;

    .line 320
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemChildrenClickable:Z

    move v14, v0

    if-eqz v14, :cond_d

    iget-boolean v14, v10, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->clickable:Z

    if-eqz v14, :cond_d

    .line 321
    iget-object v14, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->tag:Ljava/lang/String;

    invoke-virtual {v5, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    new-instance v14, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemViewClickListener;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemViewClickListener;-><init>(Lmobi/intuitit/android/widget/WidgetListAdapter;)V

    invoke-virtual {v5, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_3
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 252
    .end local v5           #child:Landroid/view/View;
    .end local v12           #rowElement:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    :cond_4
    iget v14, v10, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->layoutId:I

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 253
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;->views:[Landroid/view/View;

    move-object v14, v0

    aput-object v5, v14, v9
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 330
    .end local v5           #child:Landroid/view/View;
    .end local v10           #itemMapping:Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
    :catch_0
    move-exception v14

    move-object v8, v14

    .line 331
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const-string v14, "LauncherPP_WLA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "****** freeMemory = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Kb"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 336
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 348
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    :goto_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v14

    const-wide/32 v16, 0x7a120

    cmp-long v14, v14, v16

    if-gez v14, :cond_0

    .line 350
    const-string v14, "LauncherPP_WLA"

    const-string v15, "force gargabe collecting below 500kb"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 260
    .restart local v5       #child:Landroid/view/View;
    .restart local v10       #itemMapping:Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
    .restart local v12       #rowElement:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    :pswitch_0
    :try_start_1
    instance-of v14, v5, Landroid/widget/TextView;

    if-eqz v14, :cond_2

    .line 262
    iget-object v14, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    if-eqz v14, :cond_6

    .line 263
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    iget-object v4, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 338
    .end local v5           #child:Landroid/view/View;
    .end local v10           #itemMapping:Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
    .end local v12           #rowElement:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    :catch_1
    move-exception v14

    move-object v8, v14

    .line 339
    .local v8, e:Ljava/lang/Exception;
    const-string v14, "LauncherPP_WLA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "****** freeMemory = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Kb"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 265
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v5       #child:Landroid/view/View;
    .restart local v10       #itemMapping:Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
    .restart local v12       #rowElement:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    :cond_6
    :try_start_2
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    iget v14, v10, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->defaultResource:I

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 268
    :pswitch_1
    instance-of v14, v5, Landroid/widget/TextView;

    if-eqz v14, :cond_2

    .line 270
    iget-object v14, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    if-eqz v14, :cond_7

    .line 271
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    iget-object v4, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    check-cast v4, Landroid/text/Spanned;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 273
    :cond_7
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    iget v14, v10, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->defaultResource:I

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 276
    :pswitch_2
    instance-of v14, v5, Landroid/widget/ImageView;

    if-eqz v14, :cond_2

    .line 278
    move-object v0, v5

    check-cast v0, Landroid/widget/ImageView;

    move-object v11, v0

    .line 279
    .local v11, iv:Landroid/widget/ImageView;
    iget-object v14, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    if-eqz v14, :cond_8

    .line 280
    iget-object v4, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    .line 281
    .local v4, blob:[B
    const/4 v14, 0x0

    array-length v15, v4

    invoke-static {v4, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 282
    .end local v4           #blob:[B
    :cond_8
    iget v14, v10, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->defaultResource:I

    if-lez v14, :cond_9

    .line 283
    iget v14, v10, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->defaultResource:I

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 285
    :cond_9
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 288
    .end local v11           #iv:Landroid/widget/ImageView;
    :pswitch_3
    instance-of v14, v5, Landroid/widget/ImageView;

    if-eqz v14, :cond_2

    .line 290
    move-object v0, v5

    check-cast v0, Landroid/widget/ImageView;

    move-object v11, v0

    .line 291
    .restart local v11       #iv:Landroid/widget/ImageView;
    iget-object v14, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    if-eqz v14, :cond_a

    iget-object v14, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 292
    sget-object v14, Lmobi/intuitit/android/widget/WidgetListAdapter;->mImageManager:Lmobi/intuitit/android/widget/ListViewImageManager;

    move-object/from16 v0, p0

    iget v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetId:I

    move v15, v0

    iget-object v4, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p3

    move v2, v15

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmobi/intuitit/android/widget/ListViewImageManager;->getImageFromUri(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 294
    .local v6, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 296
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    :cond_a
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 299
    .end local v11           #iv:Landroid/widget/ImageView;
    :pswitch_4
    instance-of v14, v5, Landroid/widget/ImageView;

    if-eqz v14, :cond_2

    .line 301
    move-object v0, v5

    check-cast v0, Landroid/widget/ImageView;

    move-object v11, v0

    .line 302
    .restart local v11       #iv:Landroid/widget/ImageView;
    iget-object v4, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_b

    .line 305
    sget-object v14, Lmobi/intuitit/android/widget/WidgetListAdapter;->mImageManager:Lmobi/intuitit/android/widget/ListViewImageManager;

    move-object/from16 v0, p0

    iget v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetId:I

    move v15, v0

    iget-object v4, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v0, v14

    move-object/from16 v1, p3

    move v2, v15

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lmobi/intuitit/android/widget/ListViewImageManager;->getImageFromId(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 308
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 309
    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    iget v14, v10, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->defaultResource:I

    if-lez v14, :cond_c

    .line 310
    sget-object v14, Lmobi/intuitit/android/widget/WidgetListAdapter;->mImageManager:Lmobi/intuitit/android/widget/ListViewImageManager;

    move-object/from16 v0, p0

    iget v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetId:I

    move v15, v0

    move-object v0, v10

    iget v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->defaultResource:I

    move/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, p3

    move v2, v15

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lmobi/intuitit/android/widget/ListViewImageManager;->getImageFromId(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 312
    .restart local v7       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 314
    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_c
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 324
    .end local v11           #iv:Landroid/widget/ImageView;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemActionUriIndex:I

    move v14, v0

    if-ltz v14, :cond_3

    .line 325
    iget-object v14, v12, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->tag:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p1

    iput-object v0, v1, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;->lvClickItemTag:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public clearDataCache()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->rowsElementsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    const-string v0, "LauncherPP_WLA"

    const-string v1, "clearDataCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public dropCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 455
    sget-object v0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mImageManager:Lmobi/intuitit/android/widget/ListViewImageManager;

    iget v1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetId:I

    invoke-virtual {v0, p1, v1}, Lmobi/intuitit/android/widget/ListViewImageManager;->clearCacheForWidget(Landroid/content/Context;I)Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->rowsElementsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 457
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->rowsElementsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 403
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->rowsElementsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 408
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 416
    if-nez p2, :cond_1

    .line 417
    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 418
    new-instance v0, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    array-length v1, v1

    invoke-direct {v0, v1}, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;-><init>(I)V

    .line 419
    .local v0, holder:Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 429
    :goto_0
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 430
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1, p1}, Lmobi/intuitit/android/widget/WidgetListAdapter;->bindView(Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;Landroid/view/View;Landroid/content/Context;I)V

    .line 432
    :cond_0
    return-object p2

    .line 424
    .end local v0           #holder:Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;

    .restart local v0       #holder:Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public notifyToRegenerate()V
    .locals 3

    .prologue
    .line 448
    const-string v0, "LauncherPP_WLA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyToRegenerate widgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter;->mGenerateDataCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method
