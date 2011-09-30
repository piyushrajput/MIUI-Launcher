.class public abstract Lmobi/intuitit/android/widget/WidgetCellLayout;
.super Landroid/view/ViewGroup;
.source "WidgetCellLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private stopAllAnimationDrawables(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "vg"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 104
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, child:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 107
    :try_start_0
    check-cast v1, Landroid/widget/ImageView;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 108
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 111
    .restart local v1       #child:Landroid/view/View;
    :cond_1
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 112
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #child:Landroid/view/View;
    invoke-direct {p0, v1}, Lmobi/intuitit/android/widget/WidgetCellLayout;->stopAllAnimationDrawables(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 115
    :cond_2
    return-void

    .line 109
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 37
    return-void
.end method

.method public onViewportIn()V
    .locals 9

    .prologue
    .line 47
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetCellLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int v3, v7, v8

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 49
    :try_start_0
    invoke-virtual {p0, v3}, Lmobi/intuitit/android/widget/WidgetCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, child:Landroid/view/View;
    instance-of v7, v2, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_0

    .line 51
    move-object v0, v2

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    move-object v6, v0

    .line 52
    .local v6, widgetView:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 53
    .local v5, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 54
    .local v1, appWidgetId:I
    new-instance v7, Landroid/content/Intent;

    const-string v8, "mobi.intuitit.android.hpp.NOTIFICATION_IN_VIEWPORT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 56
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v7, "appWidgetId"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetCellLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1           #appWidgetId:I
    .end local v2           #child:Landroid/view/View;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6           #widgetView:Landroid/appwidget/AppWidgetHostView;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 65
    :cond_1
    return-void

    .line 60
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public onViewportOut()V
    .locals 9

    .prologue
    .line 76
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetCellLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int v3, v7, v8

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 78
    :try_start_0
    invoke-virtual {p0, v3}, Lmobi/intuitit/android/widget/WidgetCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, child:Landroid/view/View;
    instance-of v7, v2, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_0

    .line 80
    move-object v0, v2

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    move-object v6, v0

    .line 83
    .local v6, widgetView:Landroid/appwidget/AppWidgetHostView;
    invoke-direct {p0, v6}, Lmobi/intuitit/android/widget/WidgetCellLayout;->stopAllAnimationDrawables(Landroid/view/ViewGroup;)V

    .line 86
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 87
    .local v5, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 88
    .local v1, appWidgetId:I
    new-instance v7, Landroid/content/Intent;

    const-string v8, "mobi.intuitit.android.hpp.NOTIFICATION_OUT_VIEWPORT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 90
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v7, "appWidgetId"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/WidgetCellLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1           #appWidgetId:I
    .end local v2           #child:Landroid/view/View;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6           #widgetView:Landroid/appwidget/AppWidgetHostView;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 98
    :cond_1
    return-void

    .line 94
    :catch_0
    move-exception v7

    goto :goto_1
.end method
