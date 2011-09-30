.class Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;
.super Ljava/lang/Object;
.source "WidgetSpace.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetItemListener"
.end annotation


# instance fields
.field mAppWidgetId:I

.field mAppWidgetProvider:Landroid/content/ComponentName;

.field mListViewId:I

.field final synthetic this$1:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;Landroid/content/ComponentName;II)V
    .locals 0
    .parameter
    .parameter "cname"
    .parameter "id"
    .parameter "viewId"

    .prologue
    .line 677
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->this$1:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->mAppWidgetProvider:Landroid/content/ComponentName;

    .line 679
    iput p3, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->mAppWidgetId:I

    .line 680
    iput p4, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->mListViewId:I

    .line 681
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;

    .line 687
    .local v1, holder:Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;
    iget-object v5, v1, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;->lvClickItemTag:Ljava/lang/Object;

    .line 689
    .local v5, tag:Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 690
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    check-cast v5, Ljava/lang/String;

    .end local v5           #tag:Ljava/lang/Object;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 691
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->this$1:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    iget-object v6, v6, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v6}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 714
    .end local v1           #holder:Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 693
    .restart local v1       #holder:Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "mobi.intuitit.android.hpp.ACTION_ITEM_CLICK"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->mAppWidgetProvider:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 695
    const-string v6, "appWidgetId"

    iget v7, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->mAppWidgetId:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    iget v8, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->mAppWidgetId:I

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    const-string v6, "mobi.intuitit.android.hpp.EXTRA_LISTVIEW_ID"

    iget v7, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->mListViewId:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    const-string v6, "mobi.intuitit.android.hpp.EXTRA_ITEM_POS"

    invoke-virtual {v2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 700
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 701
    .local v4, srcRect:Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 702
    .local v3, location:[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 703
    const/4 v6, 0x0

    aget v6, v3, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 704
    const/4 v6, 0x1

    aget v6, v3, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 705
    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 706
    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 707
    const-string v6, "mobi.intuitit.android.hpp.EXTRA_ITEM_SOURCE_BOUNDS"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 709
    iget-object v6, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$WidgetItemListener;->this$1:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    iget-object v6, v6, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v6}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 711
    .end local v1           #holder:Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #location:[I
    .end local v4           #srcRect:Landroid/graphics/Rect;
    .end local v5           #tag:Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 712
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
