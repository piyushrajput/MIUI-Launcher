.class Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;
.super Ljava/lang/Object;
.source "BoundRemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundOnClickListener"
.end annotation


# instance fields
.field private final myCursorPos:I

.field final synthetic this$1:Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;I)V
    .locals 0
    .parameter
    .parameter "cursorPos"

    .prologue
    .line 232
    iput-object p1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;->this$1:Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;->myCursorPos:I

    .line 234
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 239
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 240
    .local v7, location:[I
    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 241
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 242
    .local v8, srcRect:Landroid/graphics/Rect;
    aget v0, v7, v1

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 243
    const/4 v0, 0x1

    aget v0, v7, v0

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 244
    iget v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 245
    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 246
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 248
    invoke-virtual {p0, v3}, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;->prepareIntent(Landroid/content/Intent;)V

    .line 250
    :try_start_0
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;->this$1:Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    invoke-static {v0}, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->access$200(Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 252
    .local v6, e:Landroid/app/PendingIntent$CanceledException;
    const-string v0, "SetOnClickPendingIntent"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected prepareIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 257
    iget-object v1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;->this$1:Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    iget-object v1, v1, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-static {v1}, Lmobi/intuitit/android/widget/BoundRemoteViews;->access$100(Lmobi/intuitit/android/widget/BoundRemoteViews;)Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    move-result-object v1

    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;->myCursorPos:I

    iget-object v3, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;->this$1:Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    invoke-virtual {v1, v2, v3}, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->getValueOrDefault(ILmobi/intuitit/android/widget/SimpleRemoteViews$Action;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;->this$1:Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    invoke-static {v1}, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->access$300(Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    return-void
.end method
