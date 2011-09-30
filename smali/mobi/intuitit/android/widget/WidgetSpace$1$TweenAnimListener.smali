.class Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;
.super Ljava/lang/Object;
.source "WidgetSpace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetSpace$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TweenAnimListener"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field final synthetic this$1:Lmobi/intuitit/android/widget/WidgetSpace$1;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetSpace$1;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 250
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;->this$1:Lmobi/intuitit/android/widget/WidgetSpace$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;->mIntent:Landroid/content/Intent;

    .line 252
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;->this$1:Lmobi/intuitit/android/widget/WidgetSpace$1;

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v0}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;->mIntent:Landroid/content/Intent;

    const-string v2, "mobi.intuitit.android.hpp.NOTIFICATION_TWEEN_ANIMATION_ENDED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    iput-object v3, p0, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;->mIntent:Landroid/content/Intent;

    .line 260
    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 261
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 264
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;->this$1:Lmobi/intuitit/android/widget/WidgetSpace$1;

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v0}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;->mIntent:Landroid/content/Intent;

    const-string v2, "mobi.intuitit.android.hpp.NOTIFICATION_TWEEN_ANIMATION_REPEATED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 271
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;->this$1:Lmobi/intuitit/android/widget/WidgetSpace$1;

    iget-object v0, v0, Lmobi/intuitit/android/widget/WidgetSpace$1;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-virtual {v0}, Lmobi/intuitit/android/widget/WidgetSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/intuitit/android/widget/WidgetSpace$1$TweenAnimListener;->mIntent:Landroid/content/Intent;

    const-string v2, "mobi.intuitit.android.hpp.NOTIFICATION_TWEEN_ANIMATION_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    return-void
.end method
