.class public Lcom/android/launcher2/HotSeatButton;
.super Lcom/android/launcher2/OnLongClickWrapper;
.source "HotSeatButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/OnLongClickWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/launcher2/ItemIcon;Lcom/android/launcher2/DragController;)V
    .locals 1
    .parameter "icon"
    .parameter "dragController"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/HotSeatButton;->addView(Landroid/view/View;I)V

    .line 19
    instance-of v0, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_0

    .line 20
    check-cast p1, Lcom/android/launcher2/DropTarget;

    .end local p1
    invoke-virtual {p2, p1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 22
    :cond_0
    return-void
.end method

.method public preventPressState()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public unbind(Lcom/android/launcher2/DragController;)V
    .locals 2
    .parameter "dragController"

    .prologue
    .line 25
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HotSeatButton;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemIcon;

    .line 26
    .local v0, icon:Lcom/android/launcher2/ItemIcon;
    instance-of v1, v0, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_0

    .line 27
    check-cast v0, Lcom/android/launcher2/DropTarget;

    .end local v0           #icon:Lcom/android/launcher2/ItemIcon;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HotSeatButton;->removeAllViews()V

    .line 30
    return-void
.end method
