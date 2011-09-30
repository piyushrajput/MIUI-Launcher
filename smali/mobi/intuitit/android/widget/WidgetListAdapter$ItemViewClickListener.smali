.class Lmobi/intuitit/android/widget/WidgetListAdapter$ItemViewClickListener;
.super Ljava/lang/Object;
.source "WidgetListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 360
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 361
    .local v3, pos:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "mobi.intuitit.android.hpp.ACTION_VIEW_CLICK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget-object v5, v5, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetProvider:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 363
    const-string v5, "appWidgetId"

    iget-object v6, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget v6, v6, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetId:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->mAppWidgetId:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v5, "mobi.intuitit.android.hpp.EXTRA_VIEW_ID"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const-string v5, "mobi.intuitit.android.hpp.EXTRA_LISTVIEW_ID"

    iget-object v6, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemViewClickListener;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget v6, v6, Lmobi/intuitit/android/widget/WidgetListAdapter;->mListViewId:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    const-string v5, "mobi.intuitit.android.hpp.EXTRA_ITEM_POS"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 370
    .local v4, srcRect:Landroid/graphics/Rect;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 371
    .local v2, location:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 372
    const/4 v5, 0x0

    aget v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 373
    const/4 v5, 0x1

    aget v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 374
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 375
    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 376
    const-string v5, "mobi.intuitit.android.hpp.EXTRA_ITEM_SOURCE_BOUNDS"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #location:[I
    .end local v3           #pos:Ljava/lang/String;
    .end local v4           #srcRect:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 380
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
