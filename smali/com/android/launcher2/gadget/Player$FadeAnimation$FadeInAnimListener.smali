.class Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;
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
    name = "FadeInAnimListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;Lcom/android/launcher2/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;-><init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/gadget/Player$FadeAnimation;->access$4802(Lcom/android/launcher2/gadget/Player$FadeAnimation;Z)Z

    .line 1066
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$FadeAnimation;->access$4600(Lcom/android/launcher2/gadget/Player$FadeAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Player$FadeAnimation;->prepareUpdate()V

    .line 1069
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1074
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    iget-object v0, v0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$2200(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    iget-object v0, v0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$2700(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1081
    :cond_0
    return-void
.end method
