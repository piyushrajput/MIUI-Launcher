.class Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player$FadeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutAnimListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;Lcom/android/launcher2/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;-><init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    iget-object v0, v0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$4500(Lcom/android/launcher2/gadget/Player;)V

    .line 1047
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/gadget/Player$FadeAnimation;->access$4602(Lcom/android/launcher2/gadget/Player$FadeAnimation;Z)Z

    .line 1048
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    iget-object v0, v0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$4400(Lcom/android/launcher2/gadget/Player;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$FadeAnimation;->access$4700(Lcom/android/launcher2/gadget/Player$FadeAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1049
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1054
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1058
    return-void
.end method
