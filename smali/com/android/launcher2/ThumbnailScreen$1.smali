.class Lcom/android/launcher2/ThumbnailScreen$1;
.super Ljava/lang/Object;
.source "ThumbnailScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ThumbnailScreen;->startMovingAnimation(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ThumbnailScreen;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ThumbnailScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/launcher2/ThumbnailScreen$1;->this$0:Lcom/android/launcher2/ThumbnailScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailScreen$1;->this$0:Lcom/android/launcher2/ThumbnailScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->access$002(Lcom/android/launcher2/ThumbnailScreen;Z)Z

    .line 202
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 198
    return-void
.end method
