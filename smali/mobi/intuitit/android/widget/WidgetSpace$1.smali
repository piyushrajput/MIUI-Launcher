.class Lmobi/intuitit/android/widget/WidgetSpace$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetSpace;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetSpace;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 246
    return-void
.end method


# virtual methods
.method actFrameAnimation(Landroid/appwidget/AppWidgetHostView;ILandroid/content/Intent;Z)V
    .locals 8
    .parameter "widgetView"
    .parameter "imgViewId"
    .parameter "intent"
    .parameter "start"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;
        }
    .end annotation

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v3, Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;

    iget-object v4, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find queried widget "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "appWidgetId"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in the current screen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 153
    .local v2, imgView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 155
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    if-nez v0, :cond_1

    .line 182
    :goto_0
    return-void

    .line 158
    :cond_1
    if-eqz p4, :cond_2

    .line 160
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 161
    iget-object v3, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v3}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "mobi.intuitit.android.hpp.NOTIFICATION_FRAME_ANIMATION_STARTED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    .end local v2           #imgView:Landroid/widget/ImageView;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 178
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;

    iget-object v4, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to start frame animation on queried ImageView: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;Ljava/lang/String;)V

    throw v3

    .line 169
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #ad:Landroid/graphics/drawable/AnimationDrawable;
    .restart local v2       #imgView:Landroid/widget/ImageView;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 170
    iget-object v3, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v3}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "mobi.intuitit.android.hpp.NOTIFICATION_FRAME_ANIMATION_STOPPED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    const-string v5, "mobi.intuitit.android.hpp.EXTRA_IMAGEVIEW_ID"

    const-string v9, "mobi.intuitit.android.hpp.EXTRA_ERROR_MESSAGE"

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v5, "AnimationProvider"

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

    .line 87
    const-string v5, "appWidgetId"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, widgetId:I
    if-gez v3, :cond_0

    .line 89
    const-string v5, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 90
    :cond_0
    if-gez v3, :cond_2

    .line 91
    const-string v5, "WidgetSpace"

    const-string v6, "Scroll Provider cannot get a legal widget id"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    const/4 v4, 0x0

    .line 99
    .local v4, widgetView:Landroid/appwidget/AppWidgetHostView;
    :try_start_0
    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    iget-object v6, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    iget v6, v6, Lmobi/intuitit/android/widget/WidgetSpace;->mCurrentScreen:I

    invoke-virtual {v5, v6, v3}, Lmobi/intuitit/android/widget/WidgetSpace;->findWidget(II)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    .line 102
    const-string v5, "mobi.intuitit.android.hpp.ACTION_START_FRAME_ANIMATION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 103
    const-string v5, "mobi.intuitit.android.hpp.EXTRA_IMAGEVIEW_ID"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, p2, v6}, Lmobi/intuitit/android/widget/WidgetSpace$1;->actFrameAnimation(Landroid/appwidget/AppWidgetHostView;ILandroid/content/Intent;Z)V
    :try_end_0
    .catch Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 112
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 114
    .local v1, ae:Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;
    if-eqz v4, :cond_3

    .line 115
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    :cond_3
    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v5}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;->mAction:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mobi.intuitit.android.hpp.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1}, Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    .end local v1           #ae:Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;
    :cond_4
    :try_start_1
    const-string v5, "mobi.intuitit.android.hpp.ACTION_STOP_FRAME_ANIMATION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 106
    const-string v5, "mobi.intuitit.android.hpp.EXTRA_IMAGEVIEW_ID"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, p2, v6}, Lmobi/intuitit/android/widget/WidgetSpace$1;->actFrameAnimation(Landroid/appwidget/AppWidgetHostView;ILandroid/content/Intent;Z)V
    :try_end_1
    .catch Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 119
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 121
    .local v1, ae:Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;
    if-eqz v4, :cond_5

    .line 122
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    :cond_5
    iget-object v5, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v5}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;->mAction:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mobi.intuitit.android.hpp.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1}, Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 108
    .end local v1           #ae:Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;
    :cond_6
    :try_start_2
    const-string v5, "mobi.intuitit.android.hpp.ACTION_START_TWEEN_ANIMATION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    const-string v5, "mobi.intuitit.android.hpp.EXTRA_VIEW_ID"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v4, v5, p2}, Lmobi/intuitit/android/widget/WidgetSpace$1;->startTweenAnimation(Landroid/appwidget/AppWidgetHostView;ILandroid/content/Intent;)V
    :try_end_2
    .catch Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 126
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 129
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method startTweenAnimation(Landroid/appwidget/AppWidgetHostView;ILandroid/content/Intent;)V
    .locals 11
    .parameter "widgetView"
    .parameter "viewId"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v9, -0x1

    .line 197
    if-nez p1, :cond_0

    .line 198
    new-instance v6, Ljava/lang/NullPointerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find queried widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "appWidgetId"

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in the current screen."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 202
    :cond_0
    const-string v6, "mobi.intuitit.android.hpp.EXTRA_ANIMATION_ID"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 206
    .local v1, animId:I
    :try_start_0
    iget-object v6, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v6}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 211
    .local v5, remoteContext:Landroid/content/Context;
    invoke-static {v5, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 212
    .local v0, a:Landroid/view/animation/Animation;
    new-instance v6, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;-><init>(Lmobi/intuitit/android/widget/WidgetSpace$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 218
    const-string v6, "mobi.intuitit.android.hpp.EXTRA_ANIMATION_STARTTIME"

    const-wide/16 v7, -0x1

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 220
    .local v2, animStartTime:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 221
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 225
    :cond_1
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 226
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 227
    :cond_2
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v6

    if-le v6, v10, :cond_3

    .line 228
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 231
    :cond_3
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    return-void

    .line 233
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v2           #animStartTime:J
    .end local v5           #remoteContext:Landroid/content/Context;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 234
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;

    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    const-string v8, "Cannot load resources"

    invoke-direct {v6, v7, v8}, Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;Ljava/lang/String;)V

    throw v6

    .line 235
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 236
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    new-instance v6, Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;

    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot start animation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lmobi/intuitit/android/widget/WidgetSpace$TweenAnimationException;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;Ljava/lang/String;)V

    throw v6
.end method
