.class public Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;
.super Lmobi/intuitit/android/widget/ScrollableBaseAdapter;
.source "WidgetRemoteViewsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;
    }
.end annotation


# instance fields
.field mAppWidgetProvider:Landroid/content/ComponentName;

.field private final mAsyncQuery:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field final mQueryDataRunnable:Ljava/lang/Runnable;

.field private mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;II)V
    .locals 2
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
    .line 41
    invoke-direct {p0}, Lmobi/intuitit/android/widget/ScrollableBaseAdapter;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;

    invoke-direct {v0, p0}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;-><init>(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mQueryDataRunnable:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mAppWidgetProvider:Landroid/content/ComponentName;

    .line 45
    iput-object p2, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mIntent:Landroid/content/Intent;

    .line 47
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_LAYOUT_REMOTEVIEWS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmobi/intuitit/android/widget/BoundRemoteViews;

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    .line 48
    new-instance v0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;-><init>(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mAsyncQuery:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;

    .line 49
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mQueryDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mAsyncQuery:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Lmobi/intuitit/android/widget/BoundRemoteViews;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    return-object v0
.end method


# virtual methods
.method public dropCache()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-virtual {v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->dropCache()V

    .line 116
    return-void
.end method

.method public dropCache(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 111
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->dropCache()V

    .line 112
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-virtual {v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->getCursorCacheSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 90
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-virtual {v0, p1}, Lmobi/intuitit/android/widget/BoundRemoteViews;->moveCursor(I)V

    .line 91
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 101
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-virtual {v0, p1}, Lmobi/intuitit/android/widget/BoundRemoteViews;->moveCursor(I)V

    .line 102
    if-nez p2, :cond_0

    .line 103
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/intuitit/android/widget/BoundRemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 106
    :goto_0
    return-object p2

    .line 105
    :cond_0
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-virtual {v0, p2}, Lmobi/intuitit/android/widget/BoundRemoteViews;->reapplyBinding(Landroid/view/View;)V

    goto :goto_0
.end method

.method public declared-synchronized notifyToRegenerate()V
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mQueryDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const-string v1, "mobi.intuitit.android.hpp.EXTRA_ITEM_LAYOUT_REMOTEVIEWS"

    .line 53
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_LAYOUT_REMOTEVIEWS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-virtual {v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->dropCache()V

    .line 57
    :cond_0
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mIntent:Landroid/content/Intent;

    .line 58
    const-string v0, "mobi.intuitit.android.hpp.EXTRA_ITEM_LAYOUT_REMOTEVIEWS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmobi/intuitit/android/widget/BoundRemoteViews;

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mRemoteViews:Lmobi/intuitit/android/widget/BoundRemoteViews;

    .line 59
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->mQueryDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_1
    return-void
.end method
