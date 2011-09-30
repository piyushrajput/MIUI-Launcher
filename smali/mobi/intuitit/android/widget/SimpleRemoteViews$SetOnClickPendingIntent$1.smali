.class Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent$1;
.super Ljava/lang/Object;
.source "SimpleRemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent$1;->this$1:Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 255
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 256
    .local v7, location:[I
    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 257
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 258
    .local v8, srcRect:Landroid/graphics/Rect;
    aget v0, v7, v1

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 259
    const/4 v0, 0x1

    aget v0, v7, v0

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 260
    iget v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 261
    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 263
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 266
    :try_start_0
    iget-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent$1;->this$1:Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;

    iget-object v0, v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 268
    .local v6, e:Landroid/app/PendingIntent$CanceledException;
    const-string v0, "SetOnClickPendingIntent"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
