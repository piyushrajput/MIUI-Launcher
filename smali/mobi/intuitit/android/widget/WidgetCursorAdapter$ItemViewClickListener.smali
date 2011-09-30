.class Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemViewClickListener;
.super Ljava/lang/Object;
.source "WidgetCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetCursorAdapter;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 284
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    .local v2, pos:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "mobi.intuitit.android.hpp.ACTION_VIEW_CLICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetCursorAdapter;

    iget-object v3, v3, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mAppWidgetProvider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 287
    const-string v3, "appWidgetId"

    iget-object v4, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetCursorAdapter;

    iget v4, v4, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mAppWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetCursorAdapter;

    iget v5, v5, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mAppWidgetId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v3, "mobi.intuitit.android.hpp.EXTRA_VIEW_ID"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v3, "mobi.intuitit.android.hpp.EXTRA_LISTVIEW_ID"

    iget-object v4, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetCursorAdapter;

    iget v4, v4, Lmobi/intuitit/android/widget/WidgetCursorAdapter;->mListViewId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v3, "mobi.intuitit.android.hpp.EXTRA_ITEM_POS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:Ljava/lang/String;
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 294
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
