.class Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;
.super Ljava/lang/Object;
.source "WidgetRemoteViewsListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 67
    const-string v0, "LAUNCHER"

    const-string v1, "API v2 START QUERY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-static {v0}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->access$100(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "cookie"

    iget-object v3, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-static {v3}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->access$000(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "mobi.intuitit.android.hpp.EXTRA_DATA_URI"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-static {v4}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->access$000(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "mobi.intuitit.android.hpp.EXTRA_PROJECTION"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-static {v5}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->access$000(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "mobi.intuitit.android.hpp.EXTRA_SELECTION"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-static {v6}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->access$000(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mobi.intuitit.android.hpp.EXTRA_SELECTION_ARGUMENTS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$1;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-static {v7}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->access$000(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "mobi.intuitit.android.hpp.EXTRA_SORT_ORDER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
