.class Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "WidgetRemoteViewsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 127
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    .line 128
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 135
    const-string v0, "LAUNCHER"

    const-string v1, "API v2 QUERY COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-static {v0}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->access$300(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Lmobi/intuitit/android/widget/BoundRemoteViews;

    move-result-object v0

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-static {v1}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->access$200(Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lmobi/intuitit/android/widget/BoundRemoteViews;->setBindingCursor(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 137
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 138
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;

    invoke-virtual {v0}, Lmobi/intuitit/android/widget/WidgetRemoteViewsListAdapter;->notifyDataSetChanged()V

    .line 139
    return-void
.end method
