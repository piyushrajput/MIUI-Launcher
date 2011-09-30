.class Lcom/android/launcher2/CellScreen$1;
.super Ljava/lang/Object;
.source "CellScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellScreen;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/launcher2/CellScreen$1;->this$0:Lcom/android/launcher2/CellScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/launcher2/CellScreen$1;->this$0:Lcom/android/launcher2/CellScreen;

    invoke-virtual {v1}, Lcom/android/launcher2/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 133
    .local v0, vp:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/launcher2/CellScreen$1;->this$0:Lcom/android/launcher2/CellScreen;

    invoke-static {v1}, Lcom/android/launcher2/CellScreen;->access$000(Lcom/android/launcher2/CellScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    check-cast v0, Lcom/android/launcher2/Workspace;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onEditModeEnterComplate()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local v0       #vp:Landroid/view/ViewParent;
    :cond_1
    check-cast v0, Lcom/android/launcher2/Workspace;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onEditModeExitComplate()V

    .line 138
    iget-object v1, p0, Lcom/android/launcher2/CellScreen$1;->this$0:Lcom/android/launcher2/CellScreen;

    invoke-static {v1}, Lcom/android/launcher2/CellScreen;->access$100(Lcom/android/launcher2/CellScreen;)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->clearAnimation()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 144
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 129
    return-void
.end method
